import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/widgets/app_widget.dart';
import 'package:frontend_web_app/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configurationInjection(Env.sit);
  runApp(AppWidget());
}
