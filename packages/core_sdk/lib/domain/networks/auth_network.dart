import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/domain/domain.dart';

abstract class AuthNetwork {
  Future<Either<FailureModel, EmptyModel>> login(LoginRequestModel data);
}
