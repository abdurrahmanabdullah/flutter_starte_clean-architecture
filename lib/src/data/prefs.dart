import 'dart:convert';

import 'package:core_sdk_impl/src/data/clean_db.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/models.dart';

class Prefs {
  static Prefs? _instance;

  static Prefs get shared {
    _instance ??= Prefs._();
    return _instance!;
  }

  static const String _appLanguage = '_DEFAULT_LANGUAGE';
  static const String _introDone = '_INTRO_DONE';

  Prefs._();

  Future<SharedPreferences> get _pref => SharedPreferences.getInstance();

  /// App Language ///
  Future<void> setAppLanguage(LanguageModel language) async {
    final pref = await _pref;
    pref.setString(_appLanguage, json.encode(language.toJson()));
  }

  Future<LanguageModel> getAppLanguage() async {
    final pref = await _pref;
    final jsonString =
        pref.getString(_appLanguage) ??
        json.encode(LanguageModel.bn().toJson());
    return LanguageModel.fromJson(json.decode(jsonString));
  }

  /// Intro ///
  Future<void> setIntroDone(bool flag) async {
    final pref = await _pref;
    pref.setBool(_introDone, flag);
  }

  Future<bool> isIntroDone() async {
    final pref = await _pref;
    final flag = pref.getBool(_introDone) ?? false;
    return flag;
  }

  /// Clear All ///
  Future<void> clearAll() async {
    CleanDb.common.clear();
    final pref = await _pref;
    await pref.clear();
  }
}
