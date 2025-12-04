import 'package:core_sdk/domain/domain.dart';
import 'package:core_sdk/domain/repositories/base_singleton_repository.dart';

abstract class AuthRepository
    extends BaseSingletonRepository<LoginResponseModel> {
  Stream<bool> isLoggedIn();
}
