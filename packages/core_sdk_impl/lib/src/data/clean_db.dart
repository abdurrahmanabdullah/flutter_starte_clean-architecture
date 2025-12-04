import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:core_sdk_impl/src/database/daos/login_dao.dart';

class CleanDb {
  LoginDao get _authInfoDao => DataGetIt.shared.get();

  static CleanDb common = CleanDb();

  Future<void> clear() async {
    await Future.value([_authInfoDao.clear()]);
  }
}
