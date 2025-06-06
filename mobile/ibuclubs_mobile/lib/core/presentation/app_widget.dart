import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _appRouter = getService<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      supportedLocales: const [Locale('en', ''), Locale('bs', '')],
      builder: (context, child) {
        return Theme(data: lightTheme, child: child!);
      },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (
        Locale? locale,
        Iterable<Locale> supportedLocales,
      ) {
        for (final Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode ||
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final labelStyle = TextStyle(fontWeight: FontWeight.w600);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      resizeToAvoidBottomInset: false,
      body: AutoTabsRouter(
        duration: Duration.zero,
        routes: const [HomeRoute(), ClubsRoute(), ActivitiesRoute()],
        transitionBuilder: (context, child, animation) {
          final tabsRouter = context.tabsRouter;
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  tabsRouter.activeIndex == 0
                      ? 'Home'
                      : tabsRouter.activeIndex == 1
                      ? 'Clubs'
                      : 'Activities',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kBackgroundColor,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings, color: kBackgroundColor),
                    onPressed: () {
                      context.pushRoute(const SettingsRoute());
                    },
                  ),
                ],
                centerTitle: true,
                backgroundColor: kPrimaryColor,
                elevation: 0,
              ),
              backgroundColor: kBackgroundColor,
              bottomNavigationBar: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 1.0, color: Colors.grey.shade200),
                  Theme(
                    data: Theme.of(
                      context,
                    ).copyWith(splashFactory: NoSplash.splashFactory),
                    child: SalomonBottomBar(
                      backgroundColor: kPrimaryColor,
                      selectedItemColor: kBackgroundColor,
                      currentIndex: tabsRouter.activeIndex,
                      onTap: (index) async {
                        if (tabsRouter.activeIndex == index) {
                          for (
                            var i = 0;
                            i <= tabsRouter.topRoute.router.stack.length;
                            i++
                          ) {
                            await tabsRouter.topRoute.router.maybePopTop();
                          }
                          return;
                        }
                        tabsRouter.setActiveIndex(index);
                      },
                      items: [
                        SalomonBottomBarItem(
                          title: Text('Home', style: labelStyle),
                          icon: Icon(
                            Icons.home_rounded,
                            color: kBackgroundColor,
                          ),
                        ),
                        SalomonBottomBarItem(
                          title: Text('Clubs', style: labelStyle),
                          icon: Icon(
                            Icons.groups_2_outlined,
                            color: kBackgroundColor,
                          ),
                        ),
                        SalomonBottomBarItem(
                          title: Text('Activites', style: labelStyle),
                          icon: Icon(
                            Icons.event_available_outlined,
                            color: kBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              body: child,
            ),
          );
        },
      ),
    );
  }
}
