import 'package:clean_starter/src/blocs/base/base_pagination_use_case_cubit.dart';
import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';

typedef RefreshPaginatedPostsState =
    BasePaginationUseCaseState<EmptyModel, PaginatedPostsResponseModel>;

class RefreshPaginatedPostsCubit
    extends
        BasePaginationUseCaseCubit<EmptyModel, PaginatedPostsResponseModel> {
  RefreshPaginatedPostsCubit()
    : super(
        BasePaginationUseCaseState.empty(params: EmptyModel()),
        tag: 'RefreshPaginatedPosts',
      );

  RefreshPaginatedPostsUseCase get _useCase => CoreSdk.shared.getUseCase();

  @override
  Future<Either<FailureModel, PaginationListModel<PaginatedPostsResponseModel>>>
  callUseCase(
    EmptyModel params,
    PaginationModel pagination, {
    required String correlationId,
  }) => _useCase.call(page: pagination);
}
