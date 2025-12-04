import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:core_sdk_impl/src/database/daos/login_dao.dart';
import 'package:isar_e2m/isar_m2e.dart';

class AuthData {
  static AuthData shared = AuthData();

  LoginDao get _dao => DataGetIt.shared.get();

  Future<void> data(LoginResponseModel data) async {
    await _dao.upsert(data);
  }

  Future<LoginResponseModel> getData() async {
    final dataOption = await _dao.getById(DbConstants.singletonId);
    final data = dataOption.hasData
        ? dataOption.data
        : LoginResponseModel.empty();
    return data;
  }

  Future<bool> isLoginValid() async {
    final dataOption = await _dao.getById(DbConstants.singletonId);
    final data = dataOption.hasData
        ? dataOption.data
        : LoginResponseModel.empty();
    if (data.accessToken.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Stream<bool> loginStatusStream() => _dao.isLoggedIn();

  Future<void> clear() async {
    await _dao.clear();
  }
}
