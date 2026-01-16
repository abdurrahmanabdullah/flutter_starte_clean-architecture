part of 'entities.dart';

@Collection(accessor: 'notes')
class NoteEntity extends BaseNoSqlEntity {
  @Index(unique: true)
  String id = '';
  String title = '';
  String content = '';
  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();

  NoteEntity();

  factory NoteEntity.empty() => NoteEntity();

  factory NoteEntity.fromModel(NoteModel model) {
    final entity = NoteEntity();
    entity.id = model.id;
    entity.title = model.title;
    entity.content = model.content;
    entity.createdAt = model.createdAt;
    entity.updatedAt = model.updatedAt;
    return entity;
  }

  NoteModel toModel() {
    return NoteModel(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
