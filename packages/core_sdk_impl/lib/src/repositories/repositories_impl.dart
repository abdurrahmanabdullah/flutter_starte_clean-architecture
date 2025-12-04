import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/repositories/auth_repository.dart';
import 'package:core_sdk/domain/repositories/profile_repository.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';

@Singleton(as: Repositories)
class RepositoriesImpl extends Repositories {
  @override
  AuthRepository getAuthRepository() => DataGetIt.shared.get();

  @override
  ProfileRepository getProfileRepository() => DataGetIt.shared.get();
}
