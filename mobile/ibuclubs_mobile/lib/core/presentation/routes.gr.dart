// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:ibuclubs_mobile/auth/authentication/sign_in/presentation/sign_in_page.dart'
    as _i8;
import 'package:ibuclubs_mobile/core/presentation/app_widget.dart' as _i6;
import 'package:ibuclubs_mobile/core/presentation/emptyRoutePages/clubs_tab.dart'
    as _i4;
import 'package:ibuclubs_mobile/features/activities/presentation/activites_page.dart'
    as _i1;
import 'package:ibuclubs_mobile/features/clubs/club_details/presentation/club_details_page.dart'
    as _i2;
import 'package:ibuclubs_mobile/features/clubs/presentation/clubs_page.dart'
    as _i3;
import 'package:ibuclubs_mobile/features/home/presentation/home_page.dart'
    as _i5;
import 'package:ibuclubs_mobile/features/settings/presentation/settings_page.dart'
    as _i7;
import 'package:ibuclubs_mobile/splash/presentation/splash_page.dart' as _i9;

/// generated route for
/// [_i1.ActivitiesPage]
class ActivitiesRoute extends _i10.PageRouteInfo<void> {
  const ActivitiesRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ActivitiesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivitiesRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.ActivitiesPage();
    },
  );
}

/// generated route for
/// [_i2.ClubDetailsPage]
class ClubDetailsRoute extends _i10.PageRouteInfo<ClubDetailsRouteArgs> {
  ClubDetailsRoute({
    _i11.Key? key,
    required String id,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ClubDetailsRoute.name,
          args: ClubDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ClubDetailsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ClubDetailsRouteArgs>();
      return _i2.ClubDetailsPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class ClubDetailsRouteArgs {
  const ClubDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final _i11.Key? key;

  final String id;

  @override
  String toString() {
    return 'ClubDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.ClubsPage]
class ClubsRoute extends _i10.PageRouteInfo<void> {
  const ClubsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ClubsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClubsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.ClubsPage();
    },
  );
}

/// generated route for
/// [_i4.ClubsTab]
class ClubsTab extends _i10.PageRouteInfo<void> {
  const ClubsTab({List<_i10.PageRouteInfo>? children})
      : super(
          ClubsTab.name,
          initialChildren: children,
        );

  static const String name = 'ClubsTab';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.ClubsTab();
    },
  );
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomePage();
    },
  );
}

/// generated route for
/// [_i6.MainPage]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.MainPage();
    },
  );
}

/// generated route for
/// [_i7.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.SettingsPage();
    },
  );
}

/// generated route for
/// [_i8.SignInPage]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SignInPage();
    },
  );
}

/// generated route for
/// [_i9.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.SplashPage();
    },
  );
}
