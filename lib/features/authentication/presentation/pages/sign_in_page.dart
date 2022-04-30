import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:frontend_web_app/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:frontend_web_app/features/authentication/domain/value_objects/value_objects.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:another_flushbar/flushbar_helper.dart';

class SignInPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    final email = useState('');
    final password = useState('');
    final isLoading = useState(false);
    final authenticationRepository = getIt<AuthenticationRepository>();
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: SizedBox()),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                padding: EdgeInsets.symmetric(horizontal: 96, vertical: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.surface),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/core/svg/logo_with_toollo_icon_medium.svg',
                      width: 324 * 0.8,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 56),
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: 'Email',
                        ),
                        onChanged: (value) {
                          email.value = value;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 25.6),
                      height: 56,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: 'Password',
                        ),
                        onChanged: (value) {
                          password.value = value;
                        },
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Theme.of(context).colorScheme.primaryContainer,
                        minimumSize: Size.fromHeight(56),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () async {
                        final result = await authenticationRepository
                            .signInWithEmailAndPassword(
                                emailAddress: EmailAddress(email.value),
                                password: Password(password.value));

                        result.fold(
                            (l) => FlushbarHelper.createError(
                                  message: l.map(
                                    cancelledByUser: (_) => 'Cancelled',
                                    serverError: (_) => 'Server Error',
                                    emailAlreadyInUse: (_) =>
                                        'Email already in use',
                                    invalidEmailAndPasswordCombination: (_) =>
                                        'Invalide email and password combination',
                                    cantSendVerifyEmail: (_) =>
                                        'Cant send verify email',
                                  ),
                                ).show(context), (r) async {
                          final backendSignInResult =
                              await authenticationRepository.signIn();

                          backendSignInResult.fold(
                            (l) => FlushbarHelper.createError(
                                message: l.map(
                              cancelledByUser: (_) => 'Cancelled',
                              serverError: (_) => 'Server Error',
                              emailAlreadyInUse: (_) => 'Email already in use',
                              invalidEmailAndPasswordCombination: (_) =>
                                  'Invalide email and password combination',
                              cantSendVerifyEmail: (_) =>
                                  'Cant send verify email',
                            )).show(context),
                            (r) => AutoRouter.of(context).replace(HomeRoute(
                                children: [PermissionManagementMainRoute()],
                                currentTab: 0)),
                          );
                        });
                      },
                      child: Text(
                        'เข้าสู่ระบบ',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .button!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 38.4,
                      margin: EdgeInsets.fromLTRB(19.2, 10, 0.0, 10),
                      child: TextButton(
                          onPressed: () {}, child: Text('ลืมรหัสผ่าน ?')),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            indent: 0,
                            endIndent: 8,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Text(
                          'หรือ',
                          style: Theme.of(context).primaryTextTheme.caption,
                        ),
                        Expanded(
                          child: Divider(
                            height: 1,
                            thickness: 1,
                            indent: 8,
                            endIndent: 0,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 25.6),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child:
                            SignInButton(Buttons.Facebook, onPressed: () async {
                          final result = await authenticationRepository
                              .signInWithFacebook();
                          result.fold(
                              (l) => FlushbarHelper.createError(
                                    message: l.map(
                                      cancelledByUser: (_) => 'Cancelled',
                                      serverError: (_) => 'Server Error',
                                      emailAlreadyInUse: (_) =>
                                          'Email already in use',
                                      invalidEmailAndPasswordCombination: (_) =>
                                          'Invalide email and password combination',
                                      cantSendVerifyEmail: (_) =>
                                          'Cant send verify email',
                                    ),
                                  ).show(context), (r) async {
                            final backendSignInResult =
                                await authenticationRepository.signIn();
                            backendSignInResult.fold(
                              (l) => FlushbarHelper.createError(
                                  message: l.map(
                                cancelledByUser: (_) => 'Cancelled',
                                serverError: (_) => 'Server Error',
                                emailAlreadyInUse: (_) =>
                                    'Email already in use',
                                invalidEmailAndPasswordCombination: (_) =>
                                    'Invalide email and password combination',
                                cantSendVerifyEmail: (_) =>
                                    'Cant send verify email',
                              )).show(context),
                              (r) => AutoRouter.of(context).replace(HomeRoute(
                                  children: [PermissionManagementMainRoute()],
                                  currentTab: 0)),
                            );
                          });
                        })),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: SignInButton(Buttons.Google, onPressed: () {})),
                    Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: SignInButton(Buttons.Twitter, onPressed: () {})),
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }
}
