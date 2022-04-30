// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_messaging/firebase_messaging.dart' as _i9;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;
import 'package:twitter_login/twitter_login.dart' as _i17;

import 'core/data/data_sources/rest_api.dart' as _i16;
import 'core/data/repositories/public_repository_impl.dart' as _i29;
import 'core/domain/repositories/public_repository.dart' as _i28;
import 'core/injection/injectable_module.dart' as _i32;
import 'features/authentication/data/datasources/auth_rest_api.dart' as _i3;
import 'features/authentication/data/datasources/facebook_sign_in_auth.dart'
    as _i7;
import 'features/authentication/data/datasources/firebase_sign_in.dart' as _i10;
import 'features/authentication/data/datasources/google_sign_in_auth.dart'
    as _i12;
import 'features/authentication/data/datasources/twitter_sign_in_auth.dart'
    as _i18;
import 'features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i21;
import 'features/authentication/domain/entities/pre_register_user.dart' as _i15;
import 'features/authentication/domain/repositories/authentication_repository.dart'
    as _i20;
import 'features/manage_locker_and_equipment/data/datasources/department_rest_api.dart'
    as _i4;
import 'features/manage_locker_and_equipment/data/datasources/equipment_rest_api.dart'
    as _i5;
import 'features/manage_locker_and_equipment/data/datasources/location_rest_api.dart'
    as _i13;
import 'features/manage_locker_and_equipment/data/datasources/locker_rest_api.dart'
    as _i14;
import 'features/manage_locker_and_equipment/data/repositories/department-repository-impl.dart'
    as _i23;
import 'features/manage_locker_and_equipment/data/repositories/equipment-repository-impl.dart'
    as _i25;
import 'features/manage_locker_and_equipment/data/repositories/locker-repository-impl.dart'
    as _i27;
import 'features/manage_locker_and_equipment/domain/repositories/department-repository.dart'
    as _i22;
import 'features/manage_locker_and_equipment/domain/repositories/equipment-repository.dart'
    as _i24;
import 'features/manage_locker_and_equipment/domain/repositories/locker-repository.dart'
    as _i26;
import 'features/permission_management/data/dataoures/user_rest_api.dart'
    as _i19;
import 'features/permission_management/data/repositories/user-repository-impl.dart'
    as _i31;
import 'features/permission_management/domain/repositories/user-repository.dart'
    as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AuthRestApi>(() => _i3.AuthRestApi());
  gh.factory<_i4.DepartmentRestApi>(() => _i4.DepartmentRestApi());
  gh.factory<_i5.EquipmentRestApi>(() => _i5.EquipmentRestApi());
  gh.lazySingleton<_i6.FacebookAuth>(
      () => firebaseInjectableModule.facebookSignIn);
  gh.factory<_i7.FacebookSignInAuth>(
      () => _i7.FacebookSignInAuth(get<_i6.FacebookAuth>()));
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessage);
  gh.factory<_i10.FirebaseSignInAuth>(
      () => _i10.FirebaseSignInAuth(get<_i8.FirebaseAuth>()));
  gh.lazySingleton<_i11.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i12.GoogleSignInAuth>(
      () => _i12.GoogleSignInAuth(get<_i11.GoogleSignIn>()));
  gh.factory<_i13.LocationRestApi>(() => _i13.LocationRestApi());
  gh.factory<_i14.LockerRestApi>(() => _i14.LockerRestApi());
  gh.lazySingleton<_i15.PreRegisterUser>(
      () => firebaseInjectableModule.preRegisterUser);
  gh.factory<_i16.RestApi>(() => _i16.RestApi());
  gh.lazySingleton<_i17.TwitterLogin>(
      () => firebaseInjectableModule.twitterSignIn);
  gh.factory<_i18.TwitterSignInAuth>(
      () => _i18.TwitterSignInAuth(get<_i17.TwitterLogin>()));
  gh.factory<_i19.UserRestApi>(() => _i19.UserRestApi());
  gh.lazySingleton<_i20.AuthenticationRepository>(() =>
      _i21.AuthenticationRepositoryImpl(
          get<_i10.FirebaseSignInAuth>(),
          get<_i12.GoogleSignInAuth>(),
          get<_i7.FacebookSignInAuth>(),
          get<_i18.TwitterSignInAuth>(),
          get<_i15.PreRegisterUser>(),
          get<_i3.AuthRestApi>(),
          get<_i9.FirebaseMessaging>()));
  gh.lazySingleton<_i22.DepartmentRepository>(() =>
      _i23.DepartmentRepositoryImpl(
          get<_i20.AuthenticationRepository>(), get<_i4.DepartmentRestApi>()));
  gh.lazySingleton<_i24.EquipmentRepository>(() => _i25.EquipmentRepositoryImpl(
      get<_i20.AuthenticationRepository>(), get<_i5.EquipmentRestApi>()));
  gh.lazySingleton<_i26.LockerRepository>(() => _i27.LockerRepositoryImpl(
      get<_i20.AuthenticationRepository>(),
      get<_i14.LockerRestApi>(),
      get<_i13.LocationRestApi>()));
  gh.lazySingleton<_i28.PublicRepository>(
      () => _i29.PublicRepositoryImpl(get<_i16.RestApi>()));
  gh.lazySingleton<_i30.UserRepository>(() => _i31.UserRepositoryImpl(
      get<_i20.AuthenticationRepository>(), get<_i19.UserRestApi>()));
  return get;
}

class _$FirebaseInjectableModule extends _i32.FirebaseInjectableModule {}
