part of 'login.dart';

class GetLoginUseCase extends BaseUseCase {
  AuthRepository get _repo => DomainGetIt.shared.get();

  GetLoginUseCase();

  Future<ModelStream<LoginResponseModel>> call({
    String? correlationId,
    required LoginRequestModel data,
  }) => _repo.getWatcher();
}
