import 'package:auto_route/auto_route.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:injectable/injectable.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(
      page: MainRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: ClubsTab.page,
          children: [
            AutoRoute(page: ClubsRoute.page, initial: true),
            AutoRoute(page: ClubDetailsRoute.page),
            AutoRoute(page: ClubMembersRoute.page),
          ],
        ),

        AutoRoute(page: ActivitiesRoute.page),
      ],
    ),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: SettingsRoute.page),
  ];
}

@module
abstract class Routers {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
