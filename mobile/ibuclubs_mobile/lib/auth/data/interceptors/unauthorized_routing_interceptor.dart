import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:injectable/injectable.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.dart';

@lazySingleton
class UnauthorizedRoutingInterceptor implements Interceptor {
  final AppRouter _appRouter;

  UnauthorizedRoutingInterceptor(this._appRouter);

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
    Chain<BodyType> chain,
  ) async {
    final response = await chain.proceed(chain.request);

    if (response.statusCode == 401) {
      _appRouter.replaceAll([SignInRoute()]);
    }

    return response;
  }
}
