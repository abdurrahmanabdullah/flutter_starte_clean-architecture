import 'package:clean_starter/src/theme/modes/app_colors.dart';
import 'package:clean_starter/src/theme/modes/app_text_theme.dart';
import 'package:flutter/material.dart';

extension ThemeContext on BuildContext {
  ThemeData get appThemeData => Theme.of(this);
  AppTextTheme get appTextTheme => appThemeData.extension<AppTextTheme>()!;
  AppColors get appColorScheme => appThemeData.extension<AppColors>()!;
}
