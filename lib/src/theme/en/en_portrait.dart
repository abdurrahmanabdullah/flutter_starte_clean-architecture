import 'package:clean_starter/src/theme/modes/app_text_theme.dart';
import 'package:clean_starter/src/theme/modes/base_screen_data.dart';
import 'package:clean_starter/src/ui/default_imports.dart';
import 'package:google_fonts/google_fonts.dart';

class EnPortrait extends BaseScreenData {
  final Color textColor;

  EnPortrait({required this.textColor});

  // Text Styles (common structure, but colors will be theme-specific)
  TextStyle get _displayD1 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w600,
    fontSize: 40.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _displayD2 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w600,
    fontSize: 32.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _displayD3 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w600,
    fontSize: 28.sp,
    letterSpacing: 28 / 100,
    color: textColor,
  );

  TextStyle get _titleT1 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _titleT2 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _titleT3 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    letterSpacing: 18 / 100,
    color: textColor,
  );

  TextStyle get _subTitleS1 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _subTitleS2 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _subTitleS3 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    letterSpacing: 0,
    color: textColor,
  );

  TextStyle get _subTitleS4 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
    color: textColor,
  );

  TextStyle get _bodyP1 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    letterSpacing: 16 / 100,
    color: textColor,
  );

  TextStyle get _bodyP2 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    letterSpacing: 14 / 100,
    color: textColor,
  );

  TextStyle get _bodyP3 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    letterSpacing: 12 / 100,
    color: textColor,
  );

  TextStyle get _bodyP4 => GoogleFonts.alexandria(
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
    letterSpacing: 10 / 100,
    color: textColor,
  );

  @override
  AppTextTheme getAppTextTheme() {
    return AppTextTheme(
      displayD1: _displayD1,
      displayD2: _displayD2,
      displayD3: _displayD3,
      titleT1: _titleT1,
      titleT2: _titleT2,
      titleT3: _titleT3,
      subTitleS1: _subTitleS1,
      subTitleS2: _subTitleS2,
      subTitleS3: _subTitleS3,
      subTitleS4: _subTitleS4,
      bodyP1: _bodyP1,
      bodyP2: _bodyP2,
      bodyP3: _bodyP3,
      bodyP4: _bodyP4,
    );
  }
}
