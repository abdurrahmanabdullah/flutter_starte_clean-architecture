import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  // Base Colors - must be implemented by all themes
  final Color shadowN2;
  final Color shadowM;
  final Color totalTicketColor;
  final Color statusInfoPrimary;
  final Color bottomSheetBackground;
  final Color grayPrimary;
  final Color graySecondary;
  final Color baseWhite;
  final Color baseBlack;
  final Color baseSecondary;
  final Color onBaseSecondary;
  final Color baseAccents;

  // Brand Primary Colors - must be implemented by all themes
  final MaterialColor brandPrimary;
  final MaterialColor onBrandPrimary;

  // Brand Secondary Colors - must be implemented by all themes
  final MaterialColor brandSecondary;
  final MaterialColor onBrandSecondary;

  // Brand Accent Colors - must be implemented by all themes
  final MaterialColor brandAccents;
  final MaterialColor onBrandAccents;

  // Neutral Colors - must be implemented by all themes
  final MaterialColor neutrals;
  final MaterialColor onNeutrals;

  // Other Colors - must be implemented by all themes
  final Color others1;
  final Color others2;
  final Color others3;

  // Status Colors - must be implemented by all themes
  final Color statusError;
  final Color statusErrorLight;
  final Color statusWarning;
  final Color statusWarningLight;
  final Color statusSuccess;
  final Color statusSuccessLight;
  final Color statusInfo;
  final Color statusInfoLight;

  // Token Colors - Text (computed from base colors)
  final Color textPrimary;
  final Color textPrimaryAlt;
  final Color textSecondary;
  final Color textSecondaryLight;
  final Color textSecondaryThine;
  final Color textBrandPrimary;
  final Color textBrandSecondary;
  final Color textBrandAccents;
  final Color textDisable;
  final Color textHint;

  // Token Colors - Fill (computed from base colors)
  final Color fillMain;
  final Color onFillMain;
  final Color fillGray1;
  final Color fillGray2;
  final Color fillGray3;
  final Color fillBrandPrimary;
  final Color fillBrandPrimaryLight;
  final Color fillBrandPrimaryMedium;
  final Color fillBrandSecondary;
  final Color fillBrandAccents;

  // Token Colors - Stroke (computed from base colors)
  final Color strokeMain;
  final Color strokeLight;
  final Color strokeThine;
  final Color strokeActive;
  final Color strokeDisable;
  final Color strokeBrandPrimary;
  final Color strokeBrandSecondary;
  final Color strokeBrandAccents;

  // Token Colors - Icon (computed from base colors)
  final Color iconPrimary;
  final Color iconPrimaryAlt;
  final Color iconSecondary;
  final Color iconSecondaryLight;
  final Color iconSecondaryThine;
  final Color iconBrandPrimary;
  final Color iconBrandSecondary;
  final Color iconBrandAccents;
  final Color iconDisable;
  final Color iconHint;

  // Primary States (computed from base colors)
  final Color primaryNormal;
  final Color primaryHover;
  final Color primaryPressed;
  final Color primaryLightHover;
  final Color primaryLight;

  // Unlisted Colors
  final Color totalBookingColor;

  const AppColors({
    required this.graySecondary,
    required this.grayPrimary,
    required this.bottomSheetBackground,
    required this.shadowM,
    required this.shadowN2,
    required this.statusInfoPrimary,
    required this.totalTicketColor,
    required this.totalBookingColor,
    required this.baseWhite,
    required this.baseBlack,
    required this.baseSecondary,
    required this.onBaseSecondary,
    required this.baseAccents,
    required this.brandPrimary,
    required this.onBrandPrimary,
    required this.brandSecondary,
    required this.onBrandSecondary,
    required this.brandAccents,
    required this.onBrandAccents,
    required this.neutrals,
    required this.onNeutrals,
    required this.others1,
    required this.others2,
    required this.others3,
    required this.statusError,
    required this.statusErrorLight,
    required this.statusWarning,
    required this.statusWarningLight,
    required this.statusSuccess,
    required this.statusSuccessLight,
    required this.statusInfo,
    required this.statusInfoLight,
    required this.textPrimary,
    required this.textPrimaryAlt,
    required this.textSecondary,
    required this.textSecondaryLight,
    required this.textSecondaryThine,
    required this.textBrandPrimary,
    required this.textBrandSecondary,
    required this.textBrandAccents,
    required this.textDisable,
    required this.textHint,
    required this.fillMain,
    required this.onFillMain,
    required this.fillGray1,
    required this.fillGray2,
    required this.fillGray3,
    required this.fillBrandPrimary,
    required this.fillBrandPrimaryLight,
    required this.fillBrandPrimaryMedium,
    required this.fillBrandSecondary,
    required this.fillBrandAccents,
    required this.strokeMain,
    required this.strokeLight,
    required this.strokeThine,
    required this.strokeActive,
    required this.strokeDisable,
    required this.strokeBrandPrimary,
    required this.strokeBrandSecondary,
    required this.strokeBrandAccents,
    required this.iconPrimary,
    required this.iconPrimaryAlt,
    required this.iconSecondary,
    required this.iconSecondaryLight,
    required this.iconSecondaryThine,
    required this.iconBrandPrimary,
    required this.iconBrandSecondary,
    required this.iconBrandAccents,
    required this.iconDisable,
    required this.iconHint,
    required this.primaryNormal,
    required this.primaryHover,
    required this.primaryPressed,
    required this.primaryLightHover,
    required this.primaryLight,
  });

  ColorScheme getColorScheme(Brightness brightness) => ColorScheme(
    brightness: brightness,
    surface: fillMain,
    error: statusError,
    onPrimary: onBrandPrimary,
    onSurface: onFillMain,
    primary: brandPrimary,
    secondary: baseSecondary,
    tertiary: baseAccents,
    onError: baseWhite,
    onSecondary: onBaseSecondary,
  );

  @override
  AppColors copyWith({
    Color? graySecondary,
    Color? grayPrimary,
    Color? bottomSheetBackground,
    Color? shadowM,
    Color? shadowN2,
    Color? textBrandPrimary,
    Color? statusInfoPrimary,
    Color? totalTicketColor,
    Color? baseWhite,
    Color? baseBlack,
    Color? baseSecondary,
    Color? onBaseSecondary,
    Color? baseAccents,
    MaterialColor? brandPrimary,
    MaterialColor? onBrandPrimary,
    MaterialColor? brandSecondary,
    MaterialColor? onBrandSecondary,
    MaterialColor? brandAccents,
    MaterialColor? onBrandAccents,
    MaterialColor? neutrals,
    MaterialColor? onNeutrals,
    Color? others1,
    Color? others2,
    Color? others3,
    Color? statusError,
    Color? statusErrorLight,
    Color? statusWarning,
    Color? statusWarningLight,
    Color? statusSuccess,
    Color? statusSuccessLight,
    Color? statusInfo,
    Color? statusInfoLight,
    Color? textPrimary,
    Color? textPrimaryAlt,
    Color? textSecondary,
    Color? textSecondaryLight,
    Color? textSecondaryThine,
    Color? textBrandSecondary,
    Color? textBrandAccents,
    Color? textDisable,
    Color? textHint,
    Color? fillMain,
    Color? onFillMain,
    Color? fillGray1,
    Color? fillGray2,
    Color? fillGray3,
    Color? fillBrandPrimary,
    Color? fillBrandPrimaryLight,
    Color? fillBrandPrimaryMedium,
    Color? fillBrandSecondary,
    Color? fillBrandAccents,
    Color? strokeMain,
    Color? strokeLight,
    Color? strokeThine,
    Color? strokeActive,
    Color? strokeDisable,
    Color? strokeBrandPrimary,
    Color? strokeBrandSecondary,
    Color? strokeBrandAccents,
    Color? iconPrimary,
    Color? iconPrimaryAlt,
    Color? iconSecondary,
    Color? iconSecondaryLight,
    Color? iconSecondaryThine,
    Color? iconBrandPrimary,
    Color? iconBrandSecondary,
    Color? iconBrandAccents,
    Color? iconDisable,
    Color? iconHint,
    Color? primaryNormal,
    Color? primaryHover,
    Color? primaryPressed,
    Color? primaryLightHover,
    Color? primaryLight,
    Color? totalBookingColor,
  }) {
    return AppColors(
      graySecondary: graySecondary ?? this.graySecondary,
      grayPrimary: grayPrimary ?? this.grayPrimary,
      bottomSheetBackground:
          bottomSheetBackground ?? this.bottomSheetBackground,
      textBrandPrimary: textBrandPrimary ?? this.textBrandPrimary,
      statusInfoPrimary: statusInfoPrimary ?? this.statusInfoPrimary,
      totalTicketColor: totalTicketColor ?? this.totalTicketColor,
      shadowM: shadowM ?? this.shadowM,
      shadowN2: shadowN2 ?? this.shadowN2,
      baseWhite: baseWhite ?? this.baseWhite,
      baseBlack: baseBlack ?? this.baseBlack,
      baseSecondary: baseSecondary ?? this.baseSecondary,
      onBaseSecondary: onBaseSecondary ?? this.onBaseSecondary,
      baseAccents: baseAccents ?? this.baseAccents,
      brandPrimary: brandPrimary ?? this.brandPrimary,
      onBrandPrimary: onBrandPrimary ?? this.onBrandPrimary,
      brandSecondary: brandSecondary ?? this.brandSecondary,
      onBrandSecondary: onBrandSecondary ?? this.onBrandSecondary,
      brandAccents: brandAccents ?? this.brandAccents,
      onBrandAccents: onBrandAccents ?? this.onBrandAccents,
      neutrals: neutrals ?? this.neutrals,
      onNeutrals: onNeutrals ?? this.onNeutrals,
      others1: others1 ?? this.others1,
      others2: others2 ?? this.others2,
      others3: others3 ?? this.others3,
      statusError: statusError ?? this.statusError,
      statusErrorLight: statusErrorLight ?? this.statusErrorLight,
      statusWarning: statusWarning ?? this.statusWarning,
      statusWarningLight: statusWarningLight ?? this.statusWarningLight,
      statusSuccess: statusSuccess ?? this.statusSuccess,
      statusSuccessLight: statusSuccessLight ?? this.statusSuccessLight,
      statusInfo: statusInfo ?? this.statusInfo,
      statusInfoLight: statusInfoLight ?? this.statusInfoLight,
      textPrimary: textPrimary ?? this.textPrimary,
      textPrimaryAlt: textPrimaryAlt ?? this.textPrimaryAlt,
      textSecondary: textSecondary ?? this.textSecondary,
      textSecondaryLight: textSecondaryLight ?? this.textSecondaryLight,
      textSecondaryThine: textSecondaryThine ?? this.textSecondaryThine,
      textBrandSecondary: textBrandSecondary ?? this.textBrandSecondary,
      textBrandAccents: textBrandAccents ?? this.textBrandAccents,
      textDisable: textDisable ?? this.textDisable,
      textHint: textHint ?? this.textHint,
      fillMain: fillMain ?? this.fillMain,
      onFillMain: onFillMain ?? this.onFillMain,
      fillGray1: fillGray1 ?? this.fillGray1,
      fillGray2: fillGray2 ?? this.fillGray2,
      fillGray3: fillGray3 ?? this.fillGray3,
      fillBrandPrimary: fillBrandPrimary ?? this.fillBrandPrimary,
      fillBrandPrimaryLight:
          fillBrandPrimaryLight ?? this.fillBrandPrimaryLight,
      fillBrandPrimaryMedium:
          fillBrandPrimaryMedium ?? this.fillBrandPrimaryMedium,
      fillBrandSecondary: fillBrandSecondary ?? this.fillBrandSecondary,
      fillBrandAccents: fillBrandAccents ?? this.fillBrandAccents,
      strokeMain: strokeMain ?? this.strokeMain,
      strokeLight: strokeLight ?? this.strokeLight,
      strokeThine: strokeThine ?? this.strokeThine,
      strokeActive: strokeActive ?? this.strokeActive,
      strokeDisable: strokeDisable ?? this.strokeDisable,
      strokeBrandPrimary: strokeBrandPrimary ?? this.strokeBrandPrimary,
      strokeBrandSecondary: strokeBrandSecondary ?? this.strokeBrandSecondary,
      strokeBrandAccents: strokeBrandAccents ?? this.strokeBrandAccents,
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconPrimaryAlt: iconPrimaryAlt ?? this.iconPrimaryAlt,
      iconSecondary: iconSecondary ?? this.iconSecondary,
      iconSecondaryLight: iconSecondaryLight ?? this.iconSecondaryLight,
      iconSecondaryThine: iconSecondaryThine ?? this.iconSecondaryThine,
      iconBrandPrimary: iconBrandPrimary ?? this.iconBrandPrimary,
      iconBrandSecondary: iconBrandSecondary ?? this.iconBrandSecondary,
      iconBrandAccents: iconBrandAccents ?? this.iconBrandAccents,
      iconDisable: iconDisable ?? this.iconDisable,
      iconHint: iconHint ?? this.iconHint,
      primaryNormal: primaryNormal ?? this.primaryNormal,
      primaryHover: primaryHover ?? this.primaryHover,
      primaryPressed: primaryPressed ?? this.primaryPressed,
      primaryLightHover: primaryLightHover ?? this.primaryLightHover,
      primaryLight: primaryLight ?? this.primaryLight,
      totalBookingColor: totalBookingColor ?? this.totalBookingColor,
    );
  }

  /// Custom lerp function for MaterialColor.
  static MaterialColor? _lerpMaterialColor(
    MaterialColor? a,
    MaterialColor? b,
    double t,
  ) {
    if (a == null || b == null) return b;

    final swatch = <int, Color>{};
    final shades = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

    for (final shade in shades) {
      swatch[shade] = Color.lerp(a[shade], b[shade], t)!;
    }
    // The primary color of the swatch is the 500 shade.
    return MaterialColor(Color.lerp(a, b, t)!.toARGB32(), swatch);
  }

  @override
  ThemeExtension<AppColors> lerp(
    covariant ThemeExtension<AppColors>? other,
    double t,
  ) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      graySecondary: Color.lerp(graySecondary, other.graySecondary, t)!,
      grayPrimary: Color.lerp(grayPrimary, other.grayPrimary, t)!,
      bottomSheetBackground: Color.lerp(
        bottomSheetBackground,
        other.bottomSheetBackground,
        t,
      )!,
      textBrandPrimary: Color.lerp(
        textBrandPrimary,
        other.textBrandPrimary,
        t,
      )!,
      statusInfoPrimary: Color.lerp(
        statusInfoPrimary,
        other.statusInfoPrimary,
        t,
      )!,
      totalTicketColor: Color.lerp(
        totalTicketColor,
        other.totalTicketColor,
        t,
      )!,
      shadowM: Color.lerp(shadowM, other.shadowM, t)!,
      shadowN2: Color.lerp(shadowN2, other.shadowN2, t)!,
      baseWhite: Color.lerp(baseWhite, other.baseWhite, t)!,
      baseBlack: Color.lerp(baseBlack, other.baseBlack, t)!,
      baseSecondary: Color.lerp(baseSecondary, other.baseSecondary, t)!,
      onBaseSecondary: Color.lerp(onBaseSecondary, other.onBaseSecondary, t)!,
      baseAccents: Color.lerp(baseAccents, other.baseAccents, t)!,
      // Use the custom lerp function for MaterialColor
      brandPrimary: _lerpMaterialColor(brandPrimary, other.brandPrimary, t)!,
      onBrandPrimary: _lerpMaterialColor(
        onBrandPrimary,
        other.onBrandPrimary,
        t,
      )!,
      brandSecondary: _lerpMaterialColor(
        brandSecondary,
        other.brandSecondary,
        t,
      )!,
      onBrandSecondary: _lerpMaterialColor(
        onBrandSecondary,
        other.onBrandSecondary,
        t,
      )!,
      brandAccents: _lerpMaterialColor(brandAccents, other.brandAccents, t)!,
      onBrandAccents: _lerpMaterialColor(
        onBrandAccents,
        other.onBrandAccents,
        t,
      )!,
      neutrals: _lerpMaterialColor(neutrals, other.neutrals, t)!,
      onNeutrals: _lerpMaterialColor(onNeutrals, other.onNeutrals, t)!,
      // Standard lerp for regular Color properties
      others1: Color.lerp(others1, other.others1, t)!,
      others2: Color.lerp(others2, other.others2, t)!,
      others3: Color.lerp(others3, other.others3, t)!,
      statusError: Color.lerp(statusError, other.statusError, t)!,
      statusErrorLight: Color.lerp(
        statusErrorLight,
        other.statusErrorLight,
        t,
      )!,
      statusWarning: Color.lerp(statusWarning, other.statusWarning, t)!,
      statusWarningLight: Color.lerp(
        statusWarningLight,
        other.statusWarningLight,
        t,
      )!,
      statusSuccess: Color.lerp(statusSuccess, other.statusSuccess, t)!,
      statusSuccessLight: Color.lerp(
        statusSuccessLight,
        other.statusSuccessLight,
        t,
      )!,
      statusInfo: Color.lerp(statusInfo, other.statusInfo, t)!,
      statusInfoLight: Color.lerp(statusInfoLight, other.statusInfoLight, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textPrimaryAlt: Color.lerp(textPrimaryAlt, other.textPrimaryAlt, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textSecondaryLight: Color.lerp(
        textSecondaryLight,
        other.textSecondaryLight,
        t,
      )!,
      textSecondaryThine: Color.lerp(
        textSecondaryThine,
        other.textSecondaryThine,
        t,
      )!,
      textBrandSecondary: Color.lerp(
        textBrandSecondary,
        other.textBrandSecondary,
        t,
      )!,
      textBrandAccents: Color.lerp(
        textBrandAccents,
        other.textBrandAccents,
        t,
      )!,
      textDisable: Color.lerp(textDisable, other.textDisable, t)!,
      textHint: Color.lerp(textHint, other.textHint, t)!,
      fillMain: Color.lerp(fillMain, other.fillMain, t)!,
      onFillMain: Color.lerp(onFillMain, other.onFillMain, t)!,
      fillGray1: Color.lerp(fillGray1, other.fillGray1, t)!,
      fillGray2: Color.lerp(fillGray2, other.fillGray2, t)!,
      fillGray3: Color.lerp(fillGray3, other.fillGray3, t)!,
      fillBrandPrimary: Color.lerp(
        fillBrandPrimary,
        other.fillBrandPrimary,
        t,
      )!,
      fillBrandPrimaryLight: Color.lerp(
        fillBrandPrimaryLight,
        other.fillBrandPrimaryLight,
        t,
      )!,
      fillBrandPrimaryMedium: Color.lerp(
        fillBrandPrimaryMedium,
        other.fillBrandPrimaryMedium,
        t,
      )!,
      fillBrandSecondary: Color.lerp(
        fillBrandSecondary,
        other.fillBrandSecondary,
        t,
      )!,
      fillBrandAccents: Color.lerp(
        fillBrandAccents,
        other.fillBrandAccents,
        t,
      )!,
      strokeMain: Color.lerp(strokeMain, other.strokeMain, t)!,
      strokeLight: Color.lerp(strokeLight, other.strokeLight, t)!,
      strokeThine: Color.lerp(strokeThine, other.strokeThine, t)!,
      strokeActive: Color.lerp(strokeActive, other.strokeActive, t)!,
      strokeDisable: Color.lerp(strokeDisable, other.strokeDisable, t)!,
      strokeBrandPrimary: Color.lerp(
        strokeBrandPrimary,
        other.strokeBrandPrimary,
        t,
      )!,
      strokeBrandSecondary: Color.lerp(
        strokeBrandSecondary,
        other.strokeBrandSecondary,
        t,
      )!,
      strokeBrandAccents: Color.lerp(
        strokeBrandAccents,
        other.strokeBrandAccents,
        t,
      )!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconPrimaryAlt: Color.lerp(iconPrimaryAlt, other.iconPrimaryAlt, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      iconSecondaryLight: Color.lerp(
        iconSecondaryLight,
        other.iconSecondaryLight,
        t,
      )!,
      iconSecondaryThine: Color.lerp(
        iconSecondaryThine,
        other.iconSecondaryThine,
        t,
      )!,
      iconBrandPrimary: Color.lerp(
        iconBrandPrimary,
        other.iconBrandPrimary,
        t,
      )!,
      iconBrandSecondary: Color.lerp(
        iconBrandSecondary,
        other.iconBrandSecondary,
        t,
      )!,
      iconBrandAccents: Color.lerp(
        iconBrandAccents,
        other.iconBrandAccents,
        t,
      )!,
      iconDisable: Color.lerp(iconDisable, other.iconDisable, t)!,
      iconHint: Color.lerp(iconHint, other.iconHint, t)!,
      primaryNormal: Color.lerp(primaryNormal, other.primaryNormal, t)!,
      primaryHover: Color.lerp(primaryHover, other.primaryHover, t)!,
      primaryPressed: Color.lerp(primaryPressed, other.primaryPressed, t)!,
      primaryLightHover: Color.lerp(
        primaryLightHover,
        other.primaryLightHover,
        t,
      )!,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t)!,
      totalBookingColor: Color.lerp(
        totalBookingColor,
        other.totalBookingColor,
        t,
      )!,
    );
  }
}
