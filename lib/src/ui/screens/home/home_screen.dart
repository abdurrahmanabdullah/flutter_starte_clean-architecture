import 'package:clean_starter/src/ui/screens/home/bloc/refresh_paginated_posts_cubit.dart';
import 'package:clean_starter/src/ui/screens/home/home_portrait_view.dart';
import 'package:clean_starter/src/ui/widgets/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends Screen {
  const HomeScreen({super.key});

  @override
  Widget buildViewWrapper({required Widget child}) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (_) => RefreshProfileCubit()..call()),
        BlocProvider(create: (_) => RefreshPaginatedPostsCubit()),
      ],
      child: Scaffold(backgroundColor: Colors.transparent, body: child),
    );
  }

  @override
  Widget buildMobilePortraitView(BuildContext context) {
    return const HomePortraitView();
  }
}
