import 'modes/theme_info.dart';

class AppTheme {
  static ThemeInfo? _theme;

  static ThemeInfo get shared => _theme!;

  static void setTheme(ThemeInfo themeInfo) {
    _theme = themeInfo;
  }
}
