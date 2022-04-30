import 'package:injectable/injectable.dart';
import 'package:twitter_login/entity/auth_result.dart';
import 'package:twitter_login/twitter_login.dart';

@injectable
class TwitterSignInAuth {
  final TwitterLogin _twitterLogin;

  TwitterSignInAuth(this._twitterLogin);

  Future<AuthResult> signIn() async {
    return _twitterLogin.login();
  }
}
