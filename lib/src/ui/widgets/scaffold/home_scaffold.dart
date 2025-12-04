import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:flutter/services.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({
    super.key,
    required this.body,
    this.statusBarStyle,
    this.iosStatusBarStyle,
    this.sysNavBarStyle,
    this.backgroundColor,
    this.bottomNavigationBar,
  });

  final Brightness? statusBarStyle;
  final Brightness? iosStatusBarStyle;
  final Brightness? sysNavBarStyle;
  final Widget body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: statusBarStyle ?? Brightness.dark,
        systemStatusBarContrastEnforced: false,
        statusBarBrightness: iosStatusBarStyle ?? Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: sysNavBarStyle ?? Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor ?? Colors.transparent,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
