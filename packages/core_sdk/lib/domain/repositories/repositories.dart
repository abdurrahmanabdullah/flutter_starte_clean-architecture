import 'package:core_sdk/domain/domain_get_it.dart';
import 'package:core_sdk/domain/repositories/auth_repository.dart';
import 'package:core_sdk/domain/repositories/profile_repository.dart';

abstract class Repositories {
  static void bindRepositories(Repositories repositories) {
    DomainGetIt.shared.registerSingleton<AuthRepository>(
      repositories.getAuthRepository(),
    );
    DomainGetIt.shared.registerSingleton<ProfileRepository>(
      repositories.getProfileRepository(),
    );
  }

  AuthRepository getAuthRepository();

  ProfileRepository getProfileRepository();
}
