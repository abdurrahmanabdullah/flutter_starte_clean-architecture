// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    LanguageModel(
      name: json['name'] as String,
      locale: json['locale'] as String,
      textAlign: $enumDecode(_$LanguageTextAlignEnumMap, json['textAlign']),
    );

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'locale': instance.locale,
      'textAlign': _$LanguageTextAlignEnumMap[instance.textAlign]!,
    };

const _$LanguageTextAlignEnumMap = {
  LanguageTextAlign.left: 'left',
  LanguageTextAlign.center: 'center',
  LanguageTextAlign.right: 'right',
};
