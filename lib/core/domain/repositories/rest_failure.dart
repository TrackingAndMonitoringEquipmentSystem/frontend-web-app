import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_failure.freezed.dart';

@freezed
class RestFailure with _$RestFailure {
  const factory RestFailure.serverError() = ServerError;
  const factory RestFailure.badRequest() = BadRequest;
  const factory RestFailure.unAuthorized() = UnAuthorized;
  const factory RestFailure.notFound() = NotFound;
  const factory RestFailure.unknownError() = UnKnownError;
  factory RestFailure.fromHttpStatusCode(int statusCode) {
    switch (statusCode) {
      case 500:
        return const RestFailure.serverError();
      case 400:
        return const RestFailure.badRequest();
      case 401:
        return const RestFailure.unAuthorized();
      case 404:
        return const RestFailure.notFound();
      default:
        return const RestFailure.unknownError();
    }
  }
}
