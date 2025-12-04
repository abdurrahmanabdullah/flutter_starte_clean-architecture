part of 'login.dart';

@singleton
class RefreshLoginUseCase extends BaseUseCase {
  AuthNetwork get _network => DomainGetIt.shared.get();

  RefreshLoginUseCase();

  Future<Either<FailureModel, EmptyModel>> call({
    String? correlationId,
    required LoginRequestModel loginModel,
  }) => _network.login(loginModel);
}
