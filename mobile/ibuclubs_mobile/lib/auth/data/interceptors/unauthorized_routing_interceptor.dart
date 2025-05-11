import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UnauthorizedRoutingInterceptor implements Interceptor {
  const UnauthorizedRoutingInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
    Chain<BodyType> chain,
  ) async {
    final response = await chain.proceed(chain.request);

    if (response.statusCode == 401) {
      // navigate to auth screen
    }

    return response;
  }
}
