import 'package:clean_starter/src/blocs/base/base_use_case_cubit.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';

typedef LoginState = BaseUseCaseState<LoginRequestModel, EmptyModel>;

class LoginCubit extends BaseUseCaseCubit<LoginRequestModel, EmptyModel> {
  RefreshLoginUseCase get _useCase => CoreSdk.shared.getUseCase();

  LoginCubit()
    : super(
        BaseUseCaseState.empty(
          params: LoginRequestModel.empty(),
          data: EmptyModel(),
        ),
        tag: 'Login',
      );

  @override
  Future<Either<FailureModel, EmptyModel>> callUseCase(
    LoginRequestModel params, {
    required String correlationId,
  }) => _useCase.call(loginModel: params, correlationId: correlationId);

  @override
  BaseUseCaseState<LoginRequestModel, EmptyModel> empty() =>
      BaseUseCaseState.empty(
        params: LoginRequestModel.empty(),
        data: EmptyModel(),
      );
}
