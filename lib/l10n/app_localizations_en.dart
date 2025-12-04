// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome => 'Welcome';

  @override
  String get letsContinueYourAccount => 'Let’s continue your account.';

  @override
  String get userName => 'User Name';

  @override
  String get password => 'Password';

  @override
  String get rememberMe => 'Remember me';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String permissionRequired(String permission) {
    return 'Please turn on $permission permission to continue';
  }

  @override
  String get openSettings => 'Open Settings';

  @override
  String get signIn => 'Sign In';

  @override
  String get home => 'Home';

  @override
  String get profile => 'Profile';

  @override
  String get signUpNow => 'Sign Up Now';

  @override
  String get invalidPassword => 'Invalid Password';

  @override
  String get fieldEmpty => 'Field is empty!';

  @override
  String get search => 'Search..';

  @override
  String get notification => 'Notification';

  @override
  String get invalidUserName => 'Invalid Username';

  @override
  String get loginSuccess => 'Login Successful';

  @override
  String get looksEmptyHere => 'Looks empty here..';

  @override
  String get chooseFile => 'Choose File';

  @override
  String get appName => 'Clean Starter';

  @override
  String get likes => 'Likes';

  @override
  String get dislikes => 'Dislikes';

  @override
  String get views => 'Views';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get gender => 'Gender';

  @override
  String get email => 'Email';

  @override
  String get turnOnInternetToContinue => 'Turn on Internet to continue';
}
