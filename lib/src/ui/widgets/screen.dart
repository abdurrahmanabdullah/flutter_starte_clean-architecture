import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // White icons on Android
        statusBarBrightness: Brightness.dark, // White icons on iOS
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: buildViewWrapper(child: _buildView(context)),
    );
  }

  static bool isMobileLandscape(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return size.width < 768 && size.width > size.height;
  }

  static bool isMobilePortrait(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return size.width < 768 && size.height >= size.width;
  }

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 768 &&
      MediaQuery.sizeOf(context).height >= 768;

  static Size screenSize(BuildContext context) {
    if (isMobileLandscape(context)) {
      return const Size(874, 402);
    }
    if (isMobilePortrait(context)) {
      return const Size(402, 874);
    }
    if (isTablet(context)) {
      return const Size(768, 1024);
    }
    return const Size(402, 874);
  }

  Widget _buildView(BuildContext context) {
    if (isMobileLandscape(context)) {
      Widget? child = buildMobileLandscapeView(context);
      return child ?? _mobileView(context);
    }
    if (isMobilePortrait(context)) {
      return _mobileView(context);
    }
    if (isTablet(context)) {
      Widget? child = buildTabletView(context);
      return child ?? _mobileView(context);
    }
    return _mobileView(context);
  }

  Widget buildViewWrapper({required Widget child}) => child;

  Widget buildMobilePortraitView(BuildContext context);

  Widget? buildMobileLandscapeView(BuildContext context) => null;

  Widget? buildTabletView(BuildContext context) => null;

  Widget _mobileView(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 874),
      builder: (_, child) {
        return child!;
      },
      child: buildMobilePortraitView(context),
    );
  }
}
