import 'package:clean_starter/src/theme/modes/app_colors.dart';
import 'package:flutter/material.dart';

abstract class BaseTheme {
  AppColors get getAppColors;

  ThemeData getTheme();
}
