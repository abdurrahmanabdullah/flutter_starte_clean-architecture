import 'package:clean_starter/src/theme/modes/app_colors.dart';
import 'package:flutter/material.dart';

import 'base_theme.dart';

class LightTheme extends BaseTheme {
  @override
  AppColors get getAppColors => AppColors(
    graySecondary: _graySecondary,
    grayPrimary: _grayPrimary,
    bottomSheetBackground: _bottomSheetBackground,
    shadowM: _shadowM,
    shadowN2: _shadowN2,
    statusInfoPrimary: _statusInfoPrimary,
    totalTicketColor: _totalTicketColor,
    baseWhite: _baseWhite,
    baseBlack: _baseBlack,
    baseSecondary: _baseSecondary,
    onBaseSecondary: _baseWhite,
    baseAccents: _baseAccents,
    brandPrimary: _brandPrimary,
    onBrandPrimary: _onBrandPrimary,
    brandSecondary: _brandSecondary,
    onBrandSecondary: _onBrandSecondary,
    brandAccents: _brandAccents,
    onBrandAccents: _onBrandAccents,
    neutrals: _neutrals,
    onNeutrals: _onNeutrals,
    others1: _others1,
    others2: _others2,
    others3: _others3,
    statusError: _statusError,
    statusErrorLight: _statusErrorLight,
    statusWarning: _statusWarning,
    statusWarningLight: _statusWarningLight,
    statusSuccess: _statusSuccess,
    statusSuccessLight: _statusSuccessLight,
    statusInfo: _statusInfo,
    statusInfoLight: _statusInfoLight,
    textPrimary: _textPrimary,
    textPrimaryAlt: _textPrimaryAlt,
    textSecondary: _textSecondary,
    textSecondaryLight: _textSecondaryLight,
    textSecondaryThine: _textSecondaryThine,
    textBrandPrimary: _textBrandPrimary,
    textBrandSecondary: _textBrandSecondary,
    textBrandAccents: _textBrandAccents,
    textDisable: _textDisable,
    textHint: _textHint,
    fillMain: _fillMain,
    onFillMain: _baseBlack,
    fillGray1: _fillGray1,
    fillGray2: _fillGray2,
    fillGray3: _fillGray3,
    fillBrandPrimary: _fillBrandPrimary,
    fillBrandPrimaryLight: _fillBrandPrimaryLight,
    fillBrandPrimaryMedium: _fillBrandPrimaryMedium,
    fillBrandSecondary: _fillBrandSecondary,
    fillBrandAccents: _fillBrandAccents,
    strokeMain: _strokeMain,
    strokeLight: _strokeLight,
    strokeThine: _strokeThine,
    strokeActive: _strokeActive,
    strokeDisable: _strokeDisable,
    strokeBrandPrimary: _strokeBrandPrimary,
    strokeBrandSecondary: _strokeBrandSecondary,
    strokeBrandAccents: _strokeBrandAccents,
    iconPrimary: _iconPrimary,
    iconPrimaryAlt: _iconPrimaryAlt,
    iconSecondary: _iconSecondary,
    iconSecondaryLight: _iconSecondaryLight,
    iconSecondaryThine: _iconSecondaryThine,
    iconBrandPrimary: _iconBrandPrimary,
    iconBrandSecondary: _iconBrandSecondary,
    iconBrandAccents: _iconBrandAccents,
    iconDisable: _iconDisable,
    iconHint: _iconHint,
    primaryNormal: _primaryNormal,
    primaryHover: _primaryHover,
    primaryPressed: _primaryPressed,
    primaryLightHover: _primaryLightHover,
    primaryLight: _primaryLight,
    totalBookingColor: _totalBookingColor,
  );

  @override
  ThemeData getTheme() {
    AppColors appColors = getAppColors;
    ColorScheme colorScheme = appColors.getColorScheme(Brightness.light);
    return ThemeData(
      scaffoldBackgroundColor: colorScheme.surface,
      colorScheme: colorScheme,
      extensions: <ThemeExtension<dynamic>>[appColors],
    );
  }

  // Unlisted color
  Color get _totalBookingColor => const Color(0XFF0067C5);

  // Base Colors
  Color get _baseWhite => const Color(0xFFFFFFFF);

  Color get _graySecondary => const Color(0xFF5A5B5C);

  Color get _grayPrimary => const Color(0xFF363738);

  Color get _bottomSheetBackground => const Color(0x69323232);

  Color get _shadowM => const Color(0XFF101828);

  Color get _shadowN2 => const Color(0xFF2B2B2B);

  Color get _statusInfoPrimary => const Color(0XFF00CC00);

  Color get _totalTicketColor => const Color(0XFF079455);

  Color get _baseBlack => const Color(0xFF151515);
  final Color _baseSecondary = const Color(0xFF2A4B50);

  Color get _baseAccents => const Color(0xFFF16D31);

  // Brand Primary Colors
  final MaterialColor _brandPrimary = const MaterialColor(0xFF1E8B68, {
    50: Color(0xFFE5F4EF),
    100: Color(0xFFBFE3D6),
    200: Color(0xFF99D1BC),
    300: Color(0xFF73BFA2),
    400: Color(0xFF4DAD89),
    500: Color(0xFF1E8B68),
    600: Color(0xFF1A7E5F),
    700: Color(0xFF167154),
    800: Color(0xFF12644A),
    900: Color(0xFF0E573F),
  });

  MaterialColor get _onBrandPrimary => MaterialColor(0xFFFFFFFF, <int, Color>{
    50: _baseBlack,
    100: _baseBlack,
    200: _baseBlack,
    300: _baseBlack,
    400: _baseWhite,
    500: _baseWhite,
    600: _baseWhite,
    700: _baseWhite,
    800: _baseWhite,
    900: _baseWhite,
  });

  // Brand Secondary Colors
  final MaterialColor _brandSecondary =
      const MaterialColor(0xFF489FA3, <int, Color>{
        50: Color(0xffE9F4F5),
        100: Color(0xFFECFDFF),
        200: Color(0xFFCEF0F5),
        300: Color(0xFF8AC3CC),
        400: Color(0xFF489FA3),
        500: Color(0xFF489FA3),
        600: Color(0xFF3F8F92),
        700: Color(0xFF367E81),
        800: Color(0xFF2E6D70),
        900: Color(0xFF245B5E),
      });

  MaterialColor get _onBrandSecondary => _onBrandPrimary;

  // Brand Accent Colors
  final MaterialColor _brandAccents =
      const MaterialColor(0xFFFF8147, <int, Color>{
        50: Color(0xFFFFF4EF),
        100: Color(0xFFFFF4EF),
        200: Color(0xFFFFD9C8),
        300: Color(0xFFFFA379),
        400: Color(0xFFFF8147),
        500: Color(0xFFFF8147),
        600: Color(0xFFE67440),
        700: Color(0xFFCC6639),
        800: Color(0xFFB35832),
        900: Color(0xFF994B2B),
      });

  MaterialColor get _onBrandAccents => _onBrandPrimary;

  // Neutral Colors
  final MaterialColor _neutrals = const MaterialColor(0xFF667085, <int, Color>{
    50: Color(0xFFF5F8FC),
    100: Color(0xFFEBF2FA),
    200: Color(0xFFE2ECF3),
    300: Color(0xFFD0D5DD),
    400: Color(0xFF98A2B3),
    500: Color(0xFF667085),
    600: Color(0xFF3D4C5C),
    700: Color(0xFF263340),
    800: Color(0xFF1D2730),
    900: Color(0xFF141B22),
  });

  MaterialColor get _onNeutrals => _onBrandPrimary;

  // Other Colors

  Color get _others1 => const Color(0xFFF8FBFF);

  Color get _others2 => const Color(0xFFECF0F4);

  Color get _others3 => const Color(0xFFF5FAFF);

  // Status Colors

  Color get _statusError => const Color(0xFFFF0000);

  Color get _statusErrorLight => const Color(0xFFFFE5E5);

  Color get _statusWarning => const Color(0xFFFFAA00);

  Color get _statusWarningLight => const Color(0xFFFFF6E5);

  Color get _statusSuccess => const Color(0xFF00CC00);

  Color get _statusSuccessLight => const Color(0xFFF0FFF0);

  Color get _statusInfo => const Color(0xFF0000CC);

  Color get _statusInfoLight => const Color(0xFFE5E5FF);

  // Token Colors - Text (computed from base colors)

  Color get _textPrimary => _baseBlack;

  Color get _textPrimaryAlt => _baseWhite;

  Color get _textSecondary => _neutrals.shade700;

  Color get _textSecondaryLight => _neutrals.shade600;

  Color get _textSecondaryThine => _neutrals;

  Color get _textBrandPrimary => _brandPrimary;

  Color get _textBrandSecondary => _baseSecondary;

  Color get _textBrandAccents => _baseAccents;

  Color get _textDisable => _neutrals.shade100;

  Color get _textHint => const Color(0xff657084);

  // Token Colors - Fill (computed from base colors)

  Color get _fillMain => _baseWhite;

  Color get _fillGray1 => _others1;

  Color get _fillGray2 => _others2;

  Color get _fillGray3 => _others3;

  Color get _fillBrandPrimary => _brandPrimary;

  Color get _fillBrandPrimaryLight => _brandPrimary.shade100;

  Color get _fillBrandPrimaryMedium => _brandPrimary.shade400;

  Color get _fillBrandSecondary => _baseSecondary;

  Color get _fillBrandAccents => _baseAccents;

  // Token Colors - Stroke (computed from base colors)

  Color get _strokeMain => _neutrals.shade400;

  Color get _strokeLight => _neutrals.shade300;

  Color get _strokeThine => _others3;

  Color get _strokeActive => _neutrals.shade600;

  Color get _strokeDisable => _neutrals.shade200;

  Color get _strokeBrandPrimary => _brandPrimary;

  Color get _strokeBrandSecondary => _baseSecondary;

  Color get _strokeBrandAccents => _baseSecondary;

  // Token Colors - Icon (computed from base colors)

  Color get _iconPrimary => _baseBlack;

  Color get _iconPrimaryAlt => _baseWhite;

  Color get _iconSecondary => _neutrals.shade700;

  Color get _iconSecondaryLight => _neutrals.shade600;

  Color get _iconSecondaryThine => _neutrals.shade500;

  Color get _iconBrandPrimary => _brandPrimary;

  Color get _iconBrandSecondary => _baseSecondary;

  Color get _iconBrandAccents => _baseAccents;

  Color get _iconDisable => _neutrals.shade100;

  Color get _iconHint => const Color(0xff657084);

  // Primary States (computed from base colors)

  Color get _primaryNormal => _brandPrimary;

  Color get _primaryHover => _brandPrimary.shade400;

  Color get _primaryPressed => _brandPrimary.shade300;

  Color get _primaryLightHover => _brandPrimary.shade200;

  Color get _primaryLight => _brandPrimary.shade100;
}
