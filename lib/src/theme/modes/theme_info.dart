import 'package:clean_starter/src/theme/modes/app_text_theme.dart';
import 'package:flutter/material.dart';

import 'base_theme.dart';

abstract class ThemeInfo {
  AppTextTheme appTextTheme;
  BaseTheme baseTheme;
  ThemeData themeData;
  ThemeInfo({
    required this.appTextTheme,
    required this.baseTheme,
    required this.themeData,
  });
}
