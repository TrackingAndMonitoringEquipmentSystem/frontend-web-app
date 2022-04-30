import 'package:frontend_web_app/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configurationInjection(
  String env,
) {
  $initGetIt(getIt, environment: env);
}

abstract class Env {
  static const sit = 'sit';
  static const uat = 'uat';
  static const prod = 'prod';
}
