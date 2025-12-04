import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/networks/network.dart';
import 'package:core_sdk/domain/repositories/profile_repository.dart';
import 'package:core_sdk/domain/use_cases/base_use_case.dart';

@singleton
class RefreshProfileUseCase extends BaseUseCase {
  ProfileNetwork get _network => DomainGetIt.shared.get();

  ProfileRepository get _repo => DomainGetIt.shared.get();

  RefreshProfileUseCase();

  Future<Either<FailureModel, EmptyModel>> call({String? correlationId}) async {
    final result = await _network.getProfileData();
    return await result.fold((failure) => Left(failure), (data) async {
      if (data.id != 0) await _repo.update(data);
      return Right(const EmptyModel());
    });
  }
}
