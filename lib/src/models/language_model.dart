part of 'models.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class LanguageModel with _$LanguageModel {
  LanguageModel({
    required this.name,
    required this.locale,
    required this.textAlign,
  });

  @override
  String name;
  @override
  String locale;
  @override
  LanguageTextAlign textAlign;

  factory LanguageModel.empty() =>
      LanguageModel(name: '', locale: '', textAlign: LanguageTextAlign.left);
  factory LanguageModel.en() => LanguageModel(
    name: 'English',
    locale: 'en',
    textAlign: LanguageTextAlign.left,
  );
  factory LanguageModel.bn() => LanguageModel(
    name: 'Bengali',
    locale: 'bn',
    textAlign: LanguageTextAlign.left,
  );
  factory LanguageModel.ar() => LanguageModel(
    name: 'Arabic',
    locale: 'ar',
    textAlign: LanguageTextAlign.right,
  );

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);
}
