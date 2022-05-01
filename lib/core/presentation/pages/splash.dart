import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/injection.dart';

import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/authentication/domain/value_objects/value_objects.dart';
import 'package:frontend_web_app/injection.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future<void>.microtask(() async {
        final results =
            await getIt<AuthenticationRepository>().getSignedInUser();
        if (results == null)
          AutoRouter.of(context).push(SignInRoute());
        else
          AutoRouter.of(context).push(HomeRoute(currentTab: 0));
      });
      return null;
    }, []);
    return Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
