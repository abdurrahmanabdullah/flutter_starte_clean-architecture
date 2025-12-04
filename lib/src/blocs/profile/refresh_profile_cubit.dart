import 'package:clean_starter/src/blocs/base/base_use_case_cubit.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';

typedef RefreshProfileState = BaseUseCaseState<EmptyModel, EmptyModel>;

class RefreshProfileCubit extends BaseUseCaseCubit<EmptyModel, EmptyModel> {
  RefreshProfileUseCase get useCase => CoreSdk.shared.getUseCase();

  RefreshProfileCubit()
    : super(
        BaseUseCaseState.empty(params: EmptyModel(), data: EmptyModel()),
        tag: 'RefreshProfile',
      );

  @override
  Future<Either<FailureModel, EmptyModel>> callUseCase(
    EmptyModel params, {
    required String correlationId,
  }) async => useCase.call(correlationId: correlationId);

  @override
  BaseUseCaseState<EmptyModel, EmptyModel> empty() =>
      BaseUseCaseState.empty(params: EmptyModel(), data: EmptyModel());
}
