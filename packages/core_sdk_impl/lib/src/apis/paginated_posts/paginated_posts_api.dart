import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk_impl/src/apis/base/models/models.dart';

import '../default_imports.dart';

part 'paginated_posts_api.g.dart';
part 'paginated_posts_response.dart';

@singleton
class PaginatedPostsApi
    extends BaseJsonObjectApi<EmptyDataModel, PaginatedPostsResponse> {
  PaginatedPostsApi()
    : super(
        path: ApiEndpoints.getPaginatedPosts,
        method: ApiMethod.get,
        refreshToken: true,
      );

  Future<Either<FailureModel, PaginationListModel<PaginatedPostsResponseModel>>>
  call({required PaginationModel page}) async {
    final result = await apiCall(
      req: EmptyDataModel(),
      pathParams: {
        "skip": "${(page.currentPage * page.pageSize) - page.pageSize}",
        "limit": page.pageSize.toString(),
        /**
         * Conventional way
            "pageNumber": page.currentPage.toString(),
            "pageSize": page.pageSize.toString(),
         */
      },
    );
    return result.fold(
      (failure) {
        Logger.shared.log('PaginatedPostsAPI (FAILURE): ${failure.toModel()}');
        return Left(failure.toModel());
      },
      (response) {
        Logger.shared.log(
          'PaginatedPostsAPI (SUCCESS): ${response.toModel().data}',
        );
        return Right(response.toModel());
      },
    );
  }

  @override
  PaginatedPostsResponse convertResponse(Map<String, dynamic> json) =>
      PaginatedPostsResponse.fromJson(json);
}
