import 'dart:async';

import 'package:clean_starter/src/blocs/auth/auth_cubit.dart';
import 'package:clean_starter/src/routes/auth/auth_route.dart';
import 'package:clean_starter/src/routes/dashboard/dashboard_route.dart';
import 'package:clean_starter/src/ui/screens/splash/splash_screen.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'home/home_route.dart';

class Routes {
  static GoRouter? _router;

  static const String _splashScreen = '/splash';

  static void goToSplash(BuildContext context) {
    context.go(_splashScreen);
  }

  static GoRouter create(AuthCubit authCubit) {
    return _router ??= GoRouter(
      navigatorKey: ContextHolder.navigatorKey,
      restorationScopeId: 'app_router',
      initialLocation: _splashScreen,
      redirect: (context, state) {
        final isLoggedIn = context.read<AuthCubit>().state;
        final loggingIn = state.matchedLocation.startsWith('/auth');
        if (!isLoggedIn && !loggingIn) {
          return AuthRoutes.login;
        }
        if (isLoggedIn && loggingIn) {
          return DashboardRoute.home;
        }
        return null;
      },
      refreshListenable: GoRouterRefreshStream(authCubit.stream),
      routes: [
        GoRoute(
          path: _splashScreen,
          builder: (context, state) {
            return const SplashScreen();
          },
        ),
        ...AuthRoutes.routes,
        DashboardRoute.route,
        ...HomeRoutes.routes,
      ],
    );
  }
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
