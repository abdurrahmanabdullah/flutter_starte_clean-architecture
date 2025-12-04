import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/networks/network.dart';
import 'package:core_sdk_impl/src/apis/paginated_posts/paginated_posts_api.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';

@Singleton(as: PaginatedPostsNetwork)
class PaginatedPostsNetworkImpl implements PaginatedPostsNetwork {
  @override
  Future<Either<FailureModel, PaginationListModel<PaginatedPostsResponseModel>>>
  getPaginatedPosts({required PaginationModel page}) =>
      DataGetIt.shared.get<PaginatedPostsApi>().call(page: page);
}
