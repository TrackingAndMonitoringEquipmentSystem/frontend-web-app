import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:frontend_web_app/core/data/data_sources/rest_api.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/pre_register_user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:twitter_login/twitter_login.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FacebookAuth get facebookSignIn => FacebookAuth.instance;

  @lazySingleton
  TwitterLogin get twitterSignIn => TwitterLogin(
        apiKey: 'qZ5mQkXzNtKaH4NWrtFd2C4IY',
        apiSecretKey: 'U4yTiqC4x2G1alBpAd3B8mD3ruGRCYpHVpIqM1PSBVTUbXQbsk',
        redirectURI: 'toollo://',
      );

  @lazySingleton
  PreRegisterUser get preRegisterUser => const PreRegisterUser(
        firstName: null,
        lastName: null,
        gender: null,
        telNo: null,
        email: null,
        password: null,
        role: null,
        department: null,
        pin: null,
      );

  @lazySingleton
  FirebaseMessaging get firebaseMessage => FirebaseMessaging.instance;
}
