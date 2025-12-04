import 'package:core_sdk/domain/domain.dart';
import 'package:isar_e2m/isar_m2e.dart';

abstract class LoginDao extends BaseNoSqlDao<LoginResponseModel, int> {
  Stream<bool> isLoggedIn();
}
