import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/repositories/base_repository.dart';
import 'package:isar_e2m/isar_m2e.dart';

abstract class BaseRepositoryImpl<
  Model,
  IdType,
  Dao extends BaseNoSqlDao<Model, IdType>
>
    implements BaseRepository<Model, IdType> {
  Dao getDao();

  @override
  Future<void> clear({String? correlationId}) => getDao().clear();

  @override
  Future<void> delete(IdType id, {String? correlationId}) =>
      getDao().delete(id);

  @override
  Future<List<Model>> getAll({String? correlationId}) => getDao().getAll();

  @override
  Future<ModelStream<List<Model>>> getAllStream({String? correlationId}) =>
      getDao().getAllWatcher();

  @override
  Future<Optional<Model>> getById(IdType id, {String? correlationId}) =>
      getDao().getById(id);

  @override
  Future<ModelStream<Model>> getByIdStream(
    IdType id, {
    String? correlationId,
  }) => getDao().getByIdWatcher(id);

  @override
  Future<void> upsert(Model data, {String? correlationId}) =>
      getDao().upsert(data);

  @override
  Future<void> upsertAll(List<Model> dataList, {String? correlationId}) =>
      getDao().upsertAll(dataList);

  @override
  Future<void> deleteAll(List<IdType> idList, {String? correlationId}) =>
      getDao().deleteAll(idList);
}
