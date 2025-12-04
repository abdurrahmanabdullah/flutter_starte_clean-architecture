import 'package:clean_starter/src/ui/screens/home/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeRoutes {
  static const String _prefix = '/home';
  static const String notification = '$_prefix/notification';

  static List<GoRoute> routes = [
    GoRoute(
      path: notification,
      builder: (context, state) => const NotificationScreen(),
    ),
  ];

  static void goToNotification(BuildContext context) {
    context.push(notification);
  }
}
