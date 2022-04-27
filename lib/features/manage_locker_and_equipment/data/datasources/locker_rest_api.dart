import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/utils/environment.dart' as environment;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class LockerRestApi {
  final http.Client _httpClient = http.Client();

  LockerRestApi();

  Future<Either<RestFailure, Map<String, dynamic>>> getAll(
    String token,
  ) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.lockers[environment.LockerPath.getLockers],
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

  Future<Either<RestFailure, Map<String, dynamic>>> registerLocker({
    required String token,
    required int id,
    required String name,
    required String description,
    required List<int> departmentIds,
    required int roomId,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.lockers[environment.LockerPath.registerLocker]}/$id',
      );
      final response = await _httpClient.post(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'locker_name': name,
          'description': description,
          'deptId': [
            {'id': 1}
          ],
          'roomId': roomId,
        }),
      );
      print(response.reasonPhrase);
      print(response.body);
      if (response.statusCode == 201) {
        return Right(
          jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>,
        );
      } else {
        return Left(RestFailure.fromHttpStatusCode(response.statusCode));
      }
    } catch (error) {
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> addEquipment({
    required String token,
    required int lockerId,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            '${environment.lockers[environment.LockerPath.addEquipment]}/$lockerId',
      );
      final response = await _httpClient.get(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
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
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> getAllByDepartment({
    required String token,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path: environment.department[environment.DepartmentPath.getLockers],
      );
      final response = await _httpClient.get(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
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
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }

  Future<Either<RestFailure, Map<String, dynamic>>> getLockerByIds({
    required String token,
    required List<int> ids,
  }) async {
    try {
      final uri = Uri(
        scheme: environment.baseSchema,
        host: environment.baseApiUrl,
        port: environment.baseApiPort,
        path:
            'environment.lockers[environment.LockerPath.viewLocker]/${ids.join(',')}',
      );
      final response = await _httpClient.get(
        uri,
        headers: <String, String>{
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json; charset=UTF-8',
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
      print('error:');
      print(error);
      return const Left(UnKnownError());
    }
  }
}
