import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk_impl/src/apis/api_endpoints.dart';
import 'package:core_sdk_impl/src/apis/base/base_object_api.dart';
import 'package:core_sdk_impl/src/data/auth_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_client/json_client.dart';

part 'login_api.g.dart';
part 'login_request.dart';
part 'login_response.dart';

@singleton
class LoginApi extends BaseJsonObjectApi<LoginRequest, LoginResponse> {
  LoginApi()
    : super(
        path: ApiEndpoints.login,
        method: ApiMethod.post,
        refreshToken: true,
      );

  Future<Either<FailureModel, EmptyModel>> call(LoginRequestModel data) async {
    final request = LoginRequest(
      username: data.username,
      password: data.password,
    );
    try {
      final response = await apiCall(req: request);
      return await response.fold(
        (failure) {
          Logger.shared.log('LoginAPI (FAILURE): ${failure.toModel()}');
          return Left(failure.toModel());
        },
        (response) async {
          Logger.shared.log('LoginAPI (SUCCESS): ${response.toModel()}');
          await AuthData.shared.data(response.toModel());
          return Right(const EmptyModel());
        },
      );
    } catch (e) {
      Logger.shared.log('LoginAPI (FAILURE+): $e');
      return Left(FailureModel.generic());
    }
  }

  @override
  LoginResponse convertResponse(Map<String, dynamic> json) {
    final response = LoginResponse.fromJson(json);
    return response;
  }
}
