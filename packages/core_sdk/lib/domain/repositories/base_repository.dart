import 'package:common_sdk/common_sdk.dart';
import 'package:isar_e2m/isar_m2e.dart';

abstract class BaseRepository<Model, IdType> {
  Future<void> clear({String? correlationId});

  Future<void> upsert(Model data, {String? correlationId});

  Future<void> upsertAll(List<Model> dataList, {String? correlationId});

  Future<void> delete(IdType id, {String? correlationId});

  Future<void> deleteAll(List<IdType> idList, {String? correlationId});

  Future<Optional<Model>> getById(IdType id, {String? correlationId});

  Future<ModelStream<Model>> getByIdStream(IdType id, {String? correlationId});

  Future<List<Model>> getAll({String? correlationId});

  Future<ModelStream<List<Model>>> getAllStream({String? correlationId});
}
