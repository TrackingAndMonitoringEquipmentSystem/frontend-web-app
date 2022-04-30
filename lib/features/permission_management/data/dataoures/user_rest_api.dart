import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/utils/environment.dart' as environment;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class UserRestApi {
  final http.Client _httpClient = http.Client();
  UserRestApi();

  Future<Either<RestFailure, Map<String, dynamic>>> getAll(
    String token,
  ) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.user[environment.UserPath.getUsers],
      );

      final response = await _httpClient.get(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      );
      print(response.reasonPhrase);
      print(response.body);
      if (response.statusCode == 200) {
        return Right(
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>,
        );
      } else {
        return Left(RestFailure.fromHttpStatusCode(response.statusCode));
      }
    } catch (error) {
      return const Left(UnKnownError());
    }
  }
}