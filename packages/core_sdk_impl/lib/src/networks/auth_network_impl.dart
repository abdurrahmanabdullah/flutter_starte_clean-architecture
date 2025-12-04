import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/models/auth/login/models.dart';
import 'package:core_sdk/domain/models/common/models.dart';
import 'package:core_sdk/domain/networks/network.dart';
import 'package:core_sdk_impl/src/apis/auth/login/login_api.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthNetwork)
class AuthNetworkImpl implements AuthNetwork {
  @override
  Future<Either<FailureModel, EmptyModel>> login(LoginRequestModel data) =>
      DataGetIt.shared.get<LoginApi>().call(data);
}
