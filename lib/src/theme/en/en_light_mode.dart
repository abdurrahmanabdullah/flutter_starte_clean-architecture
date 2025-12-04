import 'package:clean_starter/src/theme/en/en_portrait.dart';
import 'package:clean_starter/src/theme/modes/base_screen_data.dart';
import 'package:flutter/material.dart';

import '../modes/base_theme.dart';
import '../modes/light_theme.dart';
import '../modes/theme_info.dart';

class EnLightMode extends ThemeInfo {
  static EnLightMode? _instance;

  EnLightMode({
    required super.appTextTheme,
    required super.baseTheme,
    required super.themeData,
  });

  static EnLightMode init(BuildContext context) {
    if (_instance == null) {
      var baseTheme = _getBaseTheme(context);
      var screenData = _getScreenData(
        context,
        baseTheme.getAppColors.baseBlack,
      );
      _instance = EnLightMode(
        appTextTheme: screenData.getAppTextTheme(),
        baseTheme: baseTheme,
        themeData: baseTheme.getTheme().copyWith(
          textTheme: screenData.getAppTextTheme().getTextTheme(),
        ),
      );
    }
    return _instance!;
  }

  static BaseScreenData _getScreenData(BuildContext context, Color textColor) {
    //Check Portrait, landscape or tab
    return EnPortrait(textColor: textColor);
  }

  static BaseTheme _getBaseTheme(BuildContext context) {
    //Check Portrait, landscape or tab
    return LightTheme();
  }

  ThemeData getData(BuildContext context) {
    final theme = baseTheme.getTheme();
    final themeText = appTextTheme.getTextTheme();
    return baseTheme.getTheme().copyWith(
      textTheme: themeText,
      extensions: {
        ...theme.extensions.values.cast<ThemeExtension>(),
        appTextTheme,
      },
    );
  }
}
