// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:twitter_login/twitter_login.dart' as _i15;

import 'core/data/data_sources/rest_api.dart' as _i14;
import 'core/data/repositories/public_repository_impl.dart' as _i22;
import 'core/domain/repositories/public_repository.dart' as _i21;
import 'core/injection/injectable_module.dart' as _i23;
import 'features/authentication/data/datasources/auth_rest_api.dart' as _i3;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i5;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i8;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i10;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i16;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i18;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i13;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i17;
import 'features/manage_locker_and_equipment/data/datasources/location_rest_api.dart'
    as _i11;
import 'features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart'
    as _i12;
import 'features/manage_locker_and_equipment/data/repositories/locker-repository-impl.dart'
    as _i20;
import 'features/manage_locker_and_equipment/domain/locker-repository.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AuthRestApi>(() => _i3.AuthRestApi());
  gh.lazySingleton<_i4.FacebookAuth>(
      () => firebaseInjectableModule.facebookSignIn);
  gh.factory<_i5.FacebookSignInAuth>(
      () => _i5.FacebookSignInAuth(get<_i4.FacebookAuth>()));
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessage);
  gh.factory<_i8.FirebaseSignInAuth>(
      () => _i8.FirebaseSignInAuth(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i9.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i10.GoogleSignInAuth>(
      () => _i10.GoogleSignInAuth(get<_i9.GoogleSignIn>()));
  gh.factory<_i11.LocationRestApi>(() => _i11.LocationRestApi());
  gh.factory<_i12.LockerRestApi>(() => _i12.LockerRestApi());
  gh.lazySingleton<_i13.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.factory<_i14.RestApi>(() => _i14.RestApi());
  gh.lazySingleton<_i15.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i16.TwitterSignInAuth>(
      () => _i16.TwitterSignInAuth(get<_i15.TwitterLogin>()));
  gh.lazySingleton<_i17.AuthenticationRepository>(() =>
      _i18.AuthenticationRepositoryImpl(
          get<_i8.FirebaseSignInAuth>(),
          get<_i10.GoogleSignInAuth>(),
          get<_i5.FacebookSignInAuth>(),
          get<_i16.TwitterSignInAuth>(),
          get<_i13.PreRegisterUser>(),
          get<_i3.AuthRestApi>(),
          get<_i7.FirebaseMessaging>()));
  gh.lazySingleton<_i19.LockerRepository>(() => _i20.LockerRepositoryImpl(
      get<_i17.AuthenticationRepository>(),
      get<_i12.LockerRestApi>(),
      get<_i11.LocationRestApi>()));
  gh.lazySingleton<_i21.PublicRepository>(
      () => _i22.PublicRepositoryImpl(get<_i14.RestApi>()));
  return get;
}

class _$FirebaseInjectableModule extends _i23.FirebaseInjectableModule {}
