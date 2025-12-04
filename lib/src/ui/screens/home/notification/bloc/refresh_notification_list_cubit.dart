import 'package:clean_starter/src/blocs/base/base_use_case_cubit.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';

typedef RefreshNotificationListState =
    BaseUseCaseState<EmptyModel, List<NotificationResponseModel>>;

class RefreshNotificationListCubit
    extends BaseUseCaseCubit<EmptyModel, List<NotificationResponseModel>> {
  RefreshNotificationListUseCase get useCase => CoreSdk.shared.getUseCase();

  RefreshNotificationListCubit()
    : super(
        BaseUseCaseState.empty(params: const EmptyModel(), data: []),
        tag: 'NotificationList',
      );

  @override
  Future<Either<FailureModel, List<NotificationResponseModel>>> callUseCase(
    EmptyModel params, {
    required String correlationId,
  }) => useCase.call();

  @override
  BaseUseCaseState<EmptyModel, List<NotificationResponseModel>> empty() {
    return RefreshNotificationListState.empty(
      params: const EmptyModel(),
      data: [],
    );
  }
}
