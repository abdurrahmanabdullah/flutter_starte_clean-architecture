import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/models/note/models.dart';
import 'package:core_sdk_impl/src/database/daos/note_dao.dart';
import 'package:core_sdk_impl/src/database/database.dart';
import 'package:core_sdk_impl/src/database/entities/entities.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:isar_e2m/isar_m2e.dart';

@Singleton(as: NoteDao)
class NoteDaoImpl extends BaseNoSqlDaoImpl<NoteModel, NoteEntity, String>
    implements NoteDao {
  NoteDaoImpl();

  @override
  IsarCollection<NoteEntity> get entityCollection => Database.shared.db.notes;

  @override
  Optional<NoteEntity> convertToEntity(NoteModel? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.ofNullable(NoteEntity.fromModel(model));
  }

  @override
  Optional<NoteModel> convertToModel(NoteEntity? entity) =>
      Optional.ofNullable(entity?.toModel());

  @override
  QueryBuilder<NoteEntity, NoteEntity, QAfterWhereClause> idEqual(
    QueryBuilder<NoteEntity, NoteEntity, QWhereClause> queryBuilder,
    String value,
  ) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(NoteModel model) => model.id;

  @override
  Future<List<NoteModel>> getAllNotes() async {
    final result = await getAll();
    return result;
  }

  @override
  Future<void> createNote(NoteModel note) async {
    await upsert(note);
  }

  @override
  Future<void> updateNote(NoteModel note) async {
    await upsert(note);
  }

  @override
  Future<void> deleteNote(String id) async {
    await delete(id);
  }
}
