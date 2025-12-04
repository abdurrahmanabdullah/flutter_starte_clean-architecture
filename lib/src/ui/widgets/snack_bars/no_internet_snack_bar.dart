import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:common_sdk/common_sdk.dart';

class NoInternetSnackBar extends SnackBar {
  NoInternetSnackBar({super.key, bool showCloseIcon = false})
      : super(
    backgroundColor:
    ContextHolder.currentContext.appColorScheme.statusInfoLight,
    content: Text(
      ContextHolder.currentContext.l10n.turnOnInternetToContinue,
      style: ContextHolder.currentContext.appTextTheme.subTitleS2.copyWith(
        color: ContextHolder.currentContext.appColorScheme.statusInfo,
        fontWeight: FontWeight.normal,
      ),
    ),
    behavior: SnackBarBehavior.floating,
    showCloseIcon: showCloseIcon,
    closeIconColor: ContextHolder.currentContext.appColorScheme.statusInfo,
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        width: 1.w,
        color: ContextHolder.currentContext.appColorScheme.statusInfo
            .withAlpha(70),
      ),
    ),
    animation: CurvedAnimation(
      parent: kAlwaysCompleteAnimation,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceOut,
    ),
  );
}