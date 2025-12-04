import 'package:auto_size_text/auto_size_text.dart';
import 'package:clean_starter/l10n/l10n.dart';
import 'package:clean_starter/src/extensions/theme_extension.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionDeniedSnackBar extends SnackBar {
  PermissionDeniedSnackBar({
    super.key,
    required String permission,
    bool showCloseIcon = false,
  }) : super(
    backgroundColor:
    ContextHolder.currentContext.appColorScheme.statusWarningLight,
    content: Row(
      children: [
        Expanded(
          child: AutoSizeText(
            ContextHolder.currentContext.l10n.permissionRequired(
              permission,
            ),
            style: ContextHolder.currentContext.appTextTheme.subTitleS2
                .copyWith(
              color: ContextHolder
                  .currentContext
                  .appColorScheme
                  .statusWarning,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => openAppSettings(),
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AutoSizeText(
              ContextHolder.currentContext.l10n.openSettings,
              style: ContextHolder.currentContext.appTextTheme.subTitleS2
                  .copyWith(
                color: ContextHolder
                    .currentContext
                    .appColorScheme
                    .statusWarning,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    ),
    behavior: SnackBarBehavior.floating,
    showCloseIcon: showCloseIcon,
    closeIconColor:
    ContextHolder.currentContext.appColorScheme.statusWarning,
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
      side: BorderSide(
        width: 1.w,
        color: ContextHolder.currentContext.appColorScheme.statusWarning
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