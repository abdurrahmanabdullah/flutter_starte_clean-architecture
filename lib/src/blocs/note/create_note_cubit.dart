import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/models/note/models.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:core_sdk_impl/src/database/daos/note_dao.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNoteCubit extends Cubit<NoteModel?> {
  CreateNoteCubit() : super(null);

  final _noteDao = DataGetIt.shared.get<NoteDao>();

  Future<void> createNote({
    required String title,
    required String content,
  }) async {
    try {
      final note = NoteModel.create(
        title: title,
        content: content,
      );

      await _noteDao.createNote(note);
      emit(note);
      Logger.shared.log('Note created successfully: ${note.id}');
    } catch (e) {
      Logger.shared.log('Failed to create note: $e');
      emit(null);
    }
  }

  void reset() {
    emit(null);
  }
}
