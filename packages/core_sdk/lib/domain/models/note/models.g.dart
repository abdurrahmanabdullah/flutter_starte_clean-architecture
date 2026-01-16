// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => _NoteModel(
  id: json['id'] as String,
  title: json['title'] as String,
  content: json['content'] as String,
  createdAt: DateTimeConverter.fromJson(json['createdAt'] as String),
  updatedAt: DateTimeConverter.fromJson(json['updatedAt'] as String),
);

Map<String, dynamic> _$NoteModelToJson(_NoteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'createdAt': DateTimeConverter.toJson(instance.createdAt),
      'updatedAt': DateTimeConverter.toJson(instance.updatedAt),
    };
