import 'dart:async';

import 'package:clean_starter/src/blocs/app_language/app_language_state.dart';
import 'package:clean_starter/src/data/prefs.dart';
import 'package:clean_starter/src/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLanguageCubit extends Cubit<AppLanguageState> {
  AppLanguageCubit() : super(AppLanguageState.empty()) {
    init();
  }
  Future<void> init() async {
    final lang = await Prefs.shared.getAppLanguage();
    if (state.lang.locale == lang.locale) return;
    emit(state.copyWith(lang: lang));
  }

  void setLang(LanguageModel lang) {
    if (!state.languages.contains(lang)) return;
    if (state.lang.locale == lang.locale) return;
    emit(state.copyWith(lang: lang));
    Prefs.shared.setAppLanguage(lang);
  }
}
