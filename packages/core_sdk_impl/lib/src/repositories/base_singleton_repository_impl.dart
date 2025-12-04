import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/repositories/base_singleton_repository.dart';
import 'package:isar_e2m/isar_m2e.dart';

abstract class BaseSingletonRepositoryImpl<Model>
    extends BaseSingletonRepository<Model> {
  BaseNoSqlDao<Model, int> getDao();

  @override
  Future<Optional<Model>> get({String? correlationId}) =>
      getDao().getById(DbConstants.singletonId);

  @override
  Future<ModelStream<Model>> getWatcher({String? correlationId}) =>
      getDao().getByIdWatcher(DbConstants.singletonId);

  @override
  Future<void> update(Model model, {String? correlationId}) =>
      getDao().upsert(model);

  @override
  Future<void> clear({String? correlationId}) => getDao().clear();
}
