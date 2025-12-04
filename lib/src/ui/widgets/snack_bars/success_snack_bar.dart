import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/src/extensions/theme_extension.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessSnackBar extends SnackBar {
  SuccessSnackBar({
    super.key,
    required String message,
    Duration? duration,
    bool showCloseIcon = false,
  }) : super(
    backgroundColor:
    ContextHolder.currentContext.appColorScheme.statusSuccessLight,
    content: AutoSizeText(
      message,
      style: ContextHolder.currentContext.appTextTheme.subTitleS2.copyWith(
        color: ContextHolder.currentContext.appColorScheme.statusSuccess,
        fontWeight: FontWeight.normal,
      ),
    ),
    duration: duration ?? const Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
    showCloseIcon: showCloseIcon,
    closeIconColor:
    ContextHolder.currentContext.appColorScheme.statusSuccess,
    elevation: 30,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        width: 1.w,
        color: ContextHolder.currentContext.appColorScheme.statusSuccess
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
