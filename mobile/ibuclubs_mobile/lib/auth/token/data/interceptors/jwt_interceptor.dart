import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/auth/token/domain/repositories/jwt_repository.dart';

@lazySingleton
class JwtInjectionInterceptor implements Interceptor {
  static const String _authHeader = "authorization";
  static const String _bearer = "bearer";

  final JwtRepository _jwtRepository;

  JwtInjectionInterceptor(this._jwtRepository);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) {
    var newRequest = chain.request;

    final jwtResponse = _jwtRepository.get();

    const excludedPaths = [];

    if (excludedPaths.contains(newRequest.url.path)) {
      return chain.proceed(newRequest);
    }

    jwtResponse.fold((failure) => failure.when(noJwt: () => {}), (jwt) async {
      newRequest = applyHeader(
        chain.request,
        _authHeader,
        "$_bearer ${jwt.token}",
      );
    });

    return chain.proceed(newRequest);
  }
}
