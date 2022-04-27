import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

@freezed
class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;
  const factory AuthenticationFailure.serverError() = ServerError;
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthenticationFailure.cantSendVerifyEmail() =
      CantSendVerifyEmail;
}
