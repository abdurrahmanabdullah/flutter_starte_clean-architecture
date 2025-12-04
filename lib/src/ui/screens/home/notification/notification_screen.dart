import 'package:clean_starter/src/ui/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/refresh_notification_list_cubit.dart';
import 'notification_portrait_view.dart';

class NotificationScreen extends Screen {
  const NotificationScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => RefreshNotificationListCubit())],
      child: Scaffold(backgroundColor: Colors.transparent, body: child),
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const NotificationPortraitView();
  }
}
