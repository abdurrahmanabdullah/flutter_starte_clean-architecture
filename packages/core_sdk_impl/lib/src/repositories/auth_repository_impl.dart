import 'package:core_sdk/domain/models/auth/login/models.dart';
import 'package:core_sdk/domain/repositories/auth_repository.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:core_sdk_impl/src/database/daos/login_dao.dart';
import 'package:core_sdk_impl/src/repositories/base_singleton_repository_impl.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends BaseSingletonRepositoryImpl<LoginResponseModel>
    implements AuthRepository {
  @override
  LoginDao getDao() => DataGetIt.shared.get<LoginDao>();

  @override
  Stream<bool> isLoggedIn() => getDao().isLoggedIn();
}
