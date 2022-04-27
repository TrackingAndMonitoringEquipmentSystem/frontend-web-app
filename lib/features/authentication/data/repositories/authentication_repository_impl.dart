import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:frontend_web_app/features/authentication/data/datasources/auth_rest_api.dart';
import 'package:frontend_web_app/features/authentication/data/datasources/facebook_sign_in_auth.dart';
import 'package:frontend_web_app/features/authentication/data/datasources/firebase_sign_in.dart';
import 'package:frontend_web_app/features/authentication/data/datasources/google_sign_in_auth.dart';
import 'package:frontend_web_app/features/authentication/data/datasources/twitter_sign_in_auth.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/pre_register_user.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/authentication/domain/value_objects/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter_login/twitter_login.dart';

@LazySingleton(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final FirebaseSignInAuth _firebaseSigInAuth;
  final GoogleSignInAuth _googleSignInAuth;
  final FacebookSignInAuth _facebookSignInInAuth;
  final TwitterSignInAuth _twitterSignInAuth;
  final AuthRestApi _authRestApi;
  final FirebaseMessaging _firebaseMessaging;
  late UserType? _userType;
  AuthenticationRepositoryImpl(
    this._firebaseSigInAuth,
    this._googleSignInAuth,
    this._facebookSignInInAuth,
    this._twitterSignInAuth,
    this.preRegisterUser,
    this._authRestApi,
    this._firebaseMessaging,
  ) {
    _userType = null;
  }
  @override
  Future<Either<AuthenticationFailure, Unit>>
      registerWithEmailAndPassword() async {
    final firebaseAuthResult =
        await _firebaseSigInAuth.createUserWithEmailAndPassword(
      preRegisterUser.email!.getOrCrash(),
      preRegisterUser.password!.getOrCrash(),
    );
    if (firebaseAuthResult.isLeft()) {
      return Left(
        firebaseAuthResult.fold((l) => l, (r) => throw UnimplementedError()),
      );
    }
    late UserCredential userCredential;
    firebaseAuthResult.fold((l) => l, (r) => userCredential = r);
    final String token = await userCredential.user!.getIdToken();
    final String fcmToken = (await _firebaseMessaging.getToken())!;
    final result = await _authRestApi.register(
      token: token,
      firstName: preRegisterUser.firstName!.getOrCrash(),
      lastName: preRegisterUser.lastName!.getOrCrash(),
      email: preRegisterUser.email!.getOrCrash(),
      tel: preRegisterUser.telNo!.getOrCrash(),
      fcmToken: fcmToken,
      roleId: preRegisterUser.role!.index + 1,
      departmentId: preRegisterUser.department!.id,
    );

    if (result.isLeft()) {
      return const Left(AuthenticationFailure.serverError());
    }
    try {
      await _firebaseSigInAuth.sendVerifyEmail();
    } catch (error) {
      return const Left(AuthenticationFailure.cantSendVerifyEmail());
    }
    return const Right(unit);
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    return _firebaseSigInAuth.signInWithEmailAndPassword(
      emailAddressStr,
      passwordStr,
    );
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignInAuth.signIn();
      if (googleUser == null) {
        return left(const AuthenticationFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      await _firebaseSigInAuth.signInWithCredential(authCredential);
      return right(unit);
    } on PlatformException catch (error) {
      debugPrint(error.toString());
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithFacebook() async {
    try {
      final logInResult = await _facebookSignInInAuth.signIn();
      if (logInResult.status == LoginStatus.cancelled) {
        return left(const AuthenticationFailure.cancelledByUser());
      }

      if (logInResult.accessToken == null) {
        return left(const AuthenticationFailure.serverError());
      }
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(logInResult.accessToken!.token);
      await _firebaseSigInAuth.signInWithCredential(facebookAuthCredential);
      return right(unit);
    } on PlatformException catch (error) {
      debugPrint(error.toString());
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, Unit>> signInWithTwitter() async {
    try {
      final logInResult = await _twitterSignInAuth.signIn();
      debugPrint(logInResult.toString());
      if (logInResult.status == TwitterLoginStatus.cancelledByUser) {
        return left(const AuthenticationFailure.cancelledByUser());
      }

      if (logInResult.status == TwitterLoginStatus.error) {
        return left(const AuthenticationFailure.serverError());
      }
      final twitterAuthCredential = TwitterAuthProvider.credential(
        accessToken: logInResult.authToken!,
        secret: logInResult.authTokenSecret!,
      );
      await _firebaseSigInAuth.signInWithCredential(twitterAuthCredential);
      return right(unit);
    } on PlatformException catch (error) {
      debugPrint(error.toString());
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<UserType?> getSignedInUser() async {
    final firebaseUser = _firebaseSigInAuth.getCurrentUser();
    if (firebaseUser == null) {
      return null;
    }
    if (_userType == null) {
      await signIn();
    }

    return _userType;
  }

  @override
  Future<void> signOut() async {
    final token = await _firebaseSigInAuth.getCurrentUser()!.getIdToken();
    await _authRestApi.signOut(token: token);
    _userType = null;
    try {
      await _firebaseSigInAuth.signOut();
    } catch (error) {
      print(error);
    }
    try {
      await _googleSignInAuth.signOut();
    } catch (error) {
      print(error);
    }
    try {
      await _facebookSignInInAuth.signOut();
    } catch (error) {
      print(error);
    }
  }

  @override
  PreRegisterUser preRegisterUser;

  @override
  Future<void> verifyOtpCode({
    required TelNo telNo,
    required Function(PhoneAuthCredential) onVerificationCompleted,
    required void Function(FirebaseAuthException) onVerificationFailed,
    required void Function(String verificationId, int? forceResendingToken)
        onCodeSent,
    required void Function(String) onCodeAutoRetrievalTimeout,
  }) {
    return _firebaseSigInAuth.verifyOtpCode(
      telNo: telNo,
      onVerificationCompleted: onVerificationCompleted,
      onVerificationFailed: onVerificationFailed,
      onCodeSent: onCodeSent,
      onCodeAutoRetrievalTimeout: onCodeAutoRetrievalTimeout,
    );
  }

  @override
  Future<Either<AuthenticationFailure, UserType>> signIn() async {
    final token = await _firebaseSigInAuth.getCurrentUser()!.getIdToken();
    final fcmToken = (await _firebaseMessaging.getToken())!;
    final result = await _authRestApi.signIn(token: token, fcmToken: fcmToken);
    if (result.isLeft()) {
      return const Left(AuthenticationFailure.serverError());
    }

    _userType = result.fold(
      (l) => null,
      (r) {
        final firebaseUser = _firebaseSigInAuth.getCurrentUser()!;
        final userMap = r['data'] as Map<String, dynamic>;
        userMap['uid'] = firebaseUser.uid;
        userMap['providerId'] = firebaseUser.providerData[0].providerId;
        return UserType.fromJson(userMap);
      },
    );
    return Right(_userType!);
  }

  @override
  UserType? get userType => _userType;

  @override
  User? get getFirebaseUser => _firebaseSigInAuth.getCurrentUser();
}
