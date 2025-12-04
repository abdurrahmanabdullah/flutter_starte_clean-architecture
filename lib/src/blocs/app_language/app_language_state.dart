import 'package:clean_starter/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_language_state.freezed.dart';

@freezed
sealed class AppLanguageState with _$AppLanguageState {
  const factory AppLanguageState({
    required List<LanguageModel> languages,
    required LanguageModel lang,
  }) = _AppLanguageState;

  factory AppLanguageState.empty() => AppLanguageState(
    lang: LanguageModel.en(),
    languages: [LanguageModel.en()],
  );
}
