import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:flutter/services.dart';

class GeneralScaffold extends StatefulWidget {
  const GeneralScaffold({
    super.key,
    this.backgroundColor,
    this.onBackPressed,
    this.onSearchPressed,
    this.body,
    this.backButton,
    this.title,
    this.actions = const [],
    this.statusBarStyle,
    this.iosStatusBarStyle,
    this.sysNavBarStyle,
  });

  final Color? backgroundColor;
  final VoidCallback? onBackPressed;
  final VoidCallback? onSearchPressed;
  final Widget? body;
  final Widget? backButton;
  final String? title;
  final List<Widget> actions;
  final Brightness? statusBarStyle;
  final Brightness? iosStatusBarStyle;
  final Brightness? sysNavBarStyle;

  @override
  State<GeneralScaffold> createState() => _GeneralScaffoldState();
}

class _GeneralScaffoldState extends State<GeneralScaffold> {
  late final BasicAppBarController _appBarController;

  @override
  void initState() {
    super.initState();
    _appBarController = BasicAppBarController();
  }

  @override
  void dispose() {
    _appBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: widget.statusBarStyle ?? Brightness.light,
        systemStatusBarContrastEnforced: false,
        statusBarBrightness: widget.iosStatusBarStyle ?? Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness:
            widget.sysNavBarStyle ?? Brightness.light,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor:
            widget.backgroundColor ?? context.appColorScheme.fillMain,
        body: Column(
          children: [
            BasicAppBar(
              title: widget.title ?? "",
              controller: _appBarController,
              onBackPressed: widget.onBackPressed,
              onSearchPressed: widget.onSearchPressed,
              actions: widget.actions,
            ),
            Expanded(child: widget.body ?? const SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
