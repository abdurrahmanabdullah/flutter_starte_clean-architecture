import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/repositories/profile_repository.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:core_sdk_impl/src/database/daos/profile_dao.dart';
import 'package:core_sdk_impl/src/repositories/base_singleton_repository_impl.dart';

@Singleton(as: ProfileRepository)
class ProfileRepositoryImpl
    extends BaseSingletonRepositoryImpl<ProfileResponseModel>
    implements ProfileRepository {
  @override
  ProfileDao getDao() => DataGetIt.shared.get<ProfileDao>();
}
