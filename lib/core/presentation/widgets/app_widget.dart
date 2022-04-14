import 'package:flutter/material.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'Sarabun',
    );
    return MaterialApp.router(
      title: 'toollo',
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        dividerColor: const Color.fromRGBO(8, 8, 8, 0.15),
        scaffoldBackgroundColor: const Color.fromRGBO(245, 244, 252, 1),
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color.fromRGBO(85, 8, 182, 1),
          onPrimary: const Color.fromRGBO(254, 253, 255, 1),
          primaryContainer: const Color.fromRGBO(25, 2, 54, 1),
          secondary: const Color.fromRGBO(241, 239, 255, 1),
          onSecondary: const Color.fromRGBO(85, 8, 182, 1),
          tertiary: const Color.fromRGBO(128, 36, 244, 1),
          surface: const Color.fromRGBO(254, 253, 255, 1),
          background: const Color.fromRGBO(245, 244, 252, 1),
          onBackground: const Color.fromRGBO(25, 2, 54, 1),
          outline: Colors.grey.shade400,
          error: Colors.red,
        ),
        primaryTextTheme: const TextTheme(
          headline1: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontSize: 19.2,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sarabun',
          ),
          subtitle1: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: 'Sarabun',
          ),
          subtitle2: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontSize: 16,
            fontFamily: 'Sarabun',
          ),
          bodyText1: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sarabun',
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(51, 51, 51, 1),
            fontSize: 15,
            fontFamily: 'Sarabun',
          ),
          caption: TextStyle(
            color: Color.fromRGBO(158, 158, 158, 1),
            fontSize: 13,
            fontFamily: 'Sarabun',
          ),
          button: TextStyle(
            color: Color.fromRGBO(254, 253, 255, 1),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sarabun',
          ),
        ),
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
