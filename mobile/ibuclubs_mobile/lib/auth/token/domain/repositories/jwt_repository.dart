import 'package:dartz/dartz.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/data/dto/sign_in_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/auth/token/domain/models/jwt.dart';
import 'package:ibuclubs_mobile/auth/token/data/dto/refresh_token_dto.dart';
import 'package:ibuclubs_mobile/auth/token/data/datasources/jwt_local_datasource.dart';
import 'package:ibuclubs_mobile/auth/token/data/datasources/jwt_remote_datasource.dart';
import 'package:ibuclubs_mobile/auth/token/data/failures/jwt_failure.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/object_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/extensions/response_request_failure_extension.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';

@lazySingleton
class JwtRepository {
  final JwtLocalDataSource _jwtLocalDataSource;
  final JwtRemoteDataSource _jwtRemoteDataSource;

  JwtRepository(this._jwtLocalDataSource, this._jwtRemoteDataSource);

  Future<Either<RequestFailure, Jwt>> getWithCredentials(
    String username,
    String password,
  ) async {
    try {
      final model = SignInDto(
        (builder) =>
            builder
              ..email = username
              ..password = password,
      );

      final response = await _jwtRemoteDataSource.get(model);

      if (response.isSuccessful) {
        final jwt = response.body!.toJwt();
        await _jwtLocalDataSource.put(jwt);
        return right(jwt);
      }

      return left(response.toRequestFailure());
    } catch (exception) {
      return left(await exception.toRequestFailure());
    }
  }

  Either<JwtFailure, Jwt> get() => _jwtLocalDataSource.get();
  Future<void> delete() => _jwtLocalDataSource.delete();

  Future<Either<Either<JwtFailure, RequestFailure>, Jwt>>
  refreshWithLocal() async {
    final jwtResponse = _jwtLocalDataSource.get();

    return jwtResponse.fold((jwtFailure) async => left(left(jwtFailure)), (
      jwt,
    ) async {
      final refreshResult = await refresh(jwt);

      return refreshResult.fold(
        (requestFailure) => left(right(requestFailure)),
        (jwt) => right(jwt),
      );
    });
  }

  Future<Either<RequestFailure, Jwt>> refresh(Jwt token) async {
    try {
      final jwtResponse = await _jwtRemoteDataSource.refresh(
        RefreshTokenDto.fromJwt(token),
      );

      if (jwtResponse.isSuccessful) {
        final jwt = jwtResponse.body!.toJwt();
        await _jwtLocalDataSource.put(jwt);
        return right(jwt);
      }

      final requestFailure = jwtResponse.toRequestFailure();

      requestFailure.maybeWhen(
        badRequest: (e) => _jwtLocalDataSource.delete(),
        jwtExpired: () => _jwtLocalDataSource.delete(),
        notFound: () => _jwtLocalDataSource.delete(),
        orElse: () {},
      );

      return left(requestFailure);
    } catch (exception) {
      return left(await exception.toRequestFailure());
    }
  }
}
