import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/networks/network.dart';
import 'package:core_sdk/domain/use_cases/base_use_case.dart';
import 'package:injectable/injectable.dart';

@singleton
class RefreshPaginatedPostsUseCase extends BaseUseCase {
  PaginatedPostsNetwork get _network => DomainGetIt.shared.get();

  RefreshPaginatedPostsUseCase();

  Future<Either<FailureModel, PaginationListModel<PaginatedPostsResponseModel>>>
  call({required PaginationModel page}) async =>
      _network.getPaginatedPosts(page: page);
}
