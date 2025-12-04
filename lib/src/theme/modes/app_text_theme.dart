import 'package:flutter/material.dart';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle displayD1;

  final TextStyle displayD2;

  final TextStyle displayD3;

  final TextStyle titleT1;

  final TextStyle titleT2;

  final TextStyle titleT3;

  final TextStyle subTitleS1;

  final TextStyle subTitleS2;

  final TextStyle subTitleS3;

  final TextStyle subTitleS4;

  final TextStyle bodyP1;

  final TextStyle bodyP2;

  final TextStyle bodyP3;

  final TextStyle bodyP4;

  const AppTextTheme({
    required this.displayD1,
    required this.displayD2,
    required this.displayD3,
    required this.titleT1,
    required this.titleT2,
    required this.titleT3,
    required this.subTitleS1,
    required this.subTitleS2,
    required this.subTitleS3,
    required this.subTitleS4,
    required this.bodyP1,
    required this.bodyP2,
    required this.bodyP3,
    required this.bodyP4,
  });

  TextTheme getTextTheme() => TextTheme(
    displayLarge: displayD1,
    displayMedium: displayD2,
    displaySmall: displayD3,
    headlineLarge: titleT1,
    headlineMedium: titleT2,
    headlineSmall: titleT3,
    titleLarge: subTitleS1,
    titleMedium: subTitleS2,
    titleSmall: subTitleS3,
    labelLarge: subTitleS2,
    labelMedium: subTitleS3,
    labelSmall: subTitleS4,
    bodyLarge: bodyP1,
    bodyMedium: bodyP2,
    bodySmall: bodyP3,
  );

  @override
  AppTextTheme copyWith({
    TextStyle? bottomSheetTitle,
    TextStyle? displayD1,
    TextStyle? displayD2,
    TextStyle? displayD3,
    TextStyle? titleT1,
    TextStyle? titleT2,
    TextStyle? titleT3,
    TextStyle? subTitleS1,
    TextStyle? subTitleS2,
    TextStyle? subTitleS3,
    TextStyle? subTitleS4,
    TextStyle? bodyP1,
    TextStyle? bodyP2,
    TextStyle? bodyP3,
    TextStyle? bodyP4,
  }) {
    return AppTextTheme(
      displayD1: displayD1 ?? this.displayD1,
      displayD2: displayD2 ?? this.displayD2,
      displayD3: displayD3 ?? this.displayD3,
      titleT1: titleT1 ?? this.titleT1,
      titleT2: titleT2 ?? this.titleT2,
      titleT3: titleT3 ?? this.titleT3,
      subTitleS1: subTitleS1 ?? this.subTitleS1,
      subTitleS2: subTitleS2 ?? this.subTitleS2,
      subTitleS3: subTitleS3 ?? this.subTitleS3,
      subTitleS4: subTitleS4 ?? this.subTitleS4,
      bodyP1: bodyP1 ?? this.bodyP1,
      bodyP2: bodyP2 ?? this.bodyP2,
      bodyP3: bodyP3 ?? this.bodyP3,
      bodyP4: bodyP4 ?? this.bodyP4,
    );
  }

  @override
  AppTextTheme lerp(ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) {
      return this;
    }

    return AppTextTheme(
      displayD1: TextStyle.lerp(displayD1, other.displayD1, t)!,
      displayD2: TextStyle.lerp(displayD2, other.displayD2, t)!,
      displayD3: TextStyle.lerp(displayD3, other.displayD3, t)!,
      titleT1: TextStyle.lerp(titleT1, other.titleT1, t)!,
      titleT2: TextStyle.lerp(titleT2, other.titleT2, t)!,
      titleT3: TextStyle.lerp(titleT3, other.titleT3, t)!,
      subTitleS1: TextStyle.lerp(subTitleS1, other.subTitleS1, t)!,
      subTitleS2: TextStyle.lerp(subTitleS2, other.subTitleS2, t)!,
      subTitleS3: TextStyle.lerp(subTitleS3, other.subTitleS3, t)!,
      subTitleS4: TextStyle.lerp(subTitleS4, other.subTitleS4, t)!,
      bodyP1: TextStyle.lerp(bodyP1, other.bodyP1, t)!,
      bodyP2: TextStyle.lerp(bodyP2, other.bodyP2, t)!,
      bodyP3: TextStyle.lerp(bodyP3, other.bodyP3, t)!,
      bodyP4: TextStyle.lerp(bodyP4, other.bodyP4, t)!,
    );
  }
}
