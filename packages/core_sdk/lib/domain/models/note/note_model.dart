part of 'models.dart';

@freezed
sealed class NoteModel with _$NoteModel {
  const factory NoteModel({
    required String id,
    required String title,
    required String content,
    @JsonKey(
      fromJson: DateTimeConverter.fromJson,
      toJson: DateTimeConverter.toJson,
    )
    required DateTime createdAt,
    @JsonKey(
      fromJson: DateTimeConverter.fromJson,
      toJson: DateTimeConverter.toJson,
    )
    required DateTime updatedAt,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);

  factory NoteModel.empty() => NoteModel(
        id: '',
        title: '',
        content: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory NoteModel.create({
    required String title,
    required String content,
  }) =>
      NoteModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: title,
        content: content,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
