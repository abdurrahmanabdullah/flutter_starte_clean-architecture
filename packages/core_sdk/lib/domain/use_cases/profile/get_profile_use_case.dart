import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/repositories/profile_repository.dart';
import 'package:core_sdk/domain/use_cases/base_use_case.dart';
import 'package:isar_e2m/isar_m2e.dart';

@singleton
class GetProfileStreamUseCase extends BaseUseCase {
  ProfileRepository get _repo => DomainGetIt.shared.get();

  GetProfileStreamUseCase();

  Future<ModelStream<ProfileResponseModel>> call({
    String? correlationId,
  }) async => await _repo.getWatcher();
}
