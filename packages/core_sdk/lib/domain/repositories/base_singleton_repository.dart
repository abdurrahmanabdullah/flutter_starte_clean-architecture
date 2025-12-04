import 'package:common_sdk/common_sdk.dart';
import 'package:isar_e2m/isar_m2e.dart';

abstract class BaseSingletonRepository<Model> {
  Future<Optional<Model>> get({String? correlationId});

  Future<ModelStream<Model>> getWatcher({String? correlationId});

  Future<void> update(Model model, {String? correlationId});

  Future<void> clear({String? correlationId});
}
