import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:isar_e2m/isar_m2e.dart';

abstract class NoteDao extends BaseNoSqlDao<NoteModel, String> {
  Future<List<NoteModel>> getAllNotes();
  Future<void> createNote(NoteModel note);
  Future<void> updateNote(NoteModel note);
  Future<void> deleteNote(String id);
}
