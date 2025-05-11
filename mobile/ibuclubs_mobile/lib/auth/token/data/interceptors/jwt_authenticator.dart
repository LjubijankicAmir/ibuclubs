import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart';

@lazySingleton
class JwtAuthenticator extends Authenticator {
  final JwtRepository _jwtRepository;

  JwtAuthenticator(this._jwtRepository);

  @override
  FutureOr<Request?> authenticate(
    Request request,
    Response response, [
    Request? originalRequest,
  ]) async {
    if (response.statusCode != 401) return null;

    final jwtResult = await _jwtRepository.refreshWithLocal();

    return jwtResult.fold(
      (failure) => failure.fold(
        (jwtFailure) => jwtFailure.when(noJwt: () => null),
        (requestFailure) => requestFailure.maybeWhen(
          badRequest: (e) => null,
          notFound: () => null,
          orElse: () => throw requestFailure,
        ),
      ),
      (newJwt) {
        return request.copyWith(
          headers: {
            ...request.headers,
            'Authorization': 'Bearer ${newJwt.token}',
          },
        );
      },
    );
  }
}
