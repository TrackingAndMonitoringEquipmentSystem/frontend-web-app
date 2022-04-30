import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/pre_register_user.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_failure.dart';
import 'package:frontend_web_app/features/authentication/domain/value_objects/value_objects.dart';

abstract class AuthenticationRepository {
  Future<UserType?> getSignedInUser();
  Future<Either<AuthenticationFailure, Unit>> registerWithEmailAndPassword();
  Future<Either<AuthenticationFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthenticationFailure, Unit>> signInWithGoogle();
  Future<Either<AuthenticationFailure, Unit>> signInWithFacebook();
  Future<Either<AuthenticationFailure, Unit>> signInWithTwitter();
  Future<void> signOut();

  set preRegisterUser(PreRegisterUser preRegisterUser);

  PreRegisterUser get preRegisterUser;

  Future<void> verifyOtpCode({
    required TelNo telNo,
    required Function(PhoneAuthCredential) onVerificationCompleted,
    required void Function(FirebaseAuthException) onVerificationFailed,
    required void Function(String verificationId, int? forceResendingToken)
        onCodeSent,
    required void Function(String) onCodeAutoRetrievalTimeout,
  });

  Future<Either<AuthenticationFailure, UserType>> signIn();

  UserType? get userType;

  User? get getFirebaseUser;
}
