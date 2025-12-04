import 'package:clean_starter/src/ui/screens/auth/login/login_screen.dart';
import 'package:clean_starter/src/ui/screens/auth/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRoutes {
  static const String _prefix = '/auth';
  static const String login = '$_prefix/login';
  static const String _signUp = '$_prefix/signup';

  static void goToLoginPage(BuildContext context) {
    context.go(login);
  }

  static void goToSignupPage(BuildContext context) {
    context.push(_signUp);
  }

  static List<RouteBase> routes = [
    GoRoute(
      path: login,
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: _signUp,
      name: 'signup',
      builder: (context, state) => const Signup(),
    ),
  ];
}
