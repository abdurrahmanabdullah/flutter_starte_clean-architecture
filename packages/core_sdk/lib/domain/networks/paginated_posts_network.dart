import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';

abstract class PaginatedPostsNetwork {
  Future<Either<FailureModel, PaginationListModel<PaginatedPostsResponseModel>>>
  getPaginatedPosts({required PaginationModel page});
}
