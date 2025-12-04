import 'package:clean_starter/src/ui/screens/dashboard/dashboard_bottom_navigation.dart';
import 'package:clean_starter/src/ui/screens/home/home_screen.dart';
import 'package:clean_starter/src/ui/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardRoute {
  static const String home = '/home';
  static const String _profile = '/profile';
 
  static void goToHome(BuildContext context) {
    context.go(home);
  }

  static final GlobalKey<NavigatorState> _homeNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _profileNavigatorKey =
      GlobalKey<NavigatorState>();

  static StatefulShellRoute get route {
    return StatefulShellRoute.indexedStack(
      restorationScopeId: 'shell_route',
      builder: (context, state, navigationShell) {
        return DashboardBottomNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: _profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
