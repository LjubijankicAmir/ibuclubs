import 'package:auto_route/auto_route.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:injectable/injectable.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
  ];
}

@module
abstract class Routers {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
