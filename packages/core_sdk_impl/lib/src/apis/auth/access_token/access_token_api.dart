import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/domain/utills/date_time_converter.dart';
import 'package:core_sdk_impl/src/data/auth_data.dart';

import '../../default_imports.dart';

part 'access_token_api.g.dart';
part 'access_token_request.dart';
part 'access_token_response.dart';

@singleton
class AccessTokenApi
    extends BaseJsonObjectApi<AccessTokenRequest, AccessTokenResponse> {
  AccessTokenApi()
    : super(
        path: ApiEndpoints.refreshToken,
        method: ApiMethod.post,
        refreshToken: false,
        sendToken: false,
      );

  Future<Either<FailureModel, EmptyModel>> call({String? correlationId}) async {
    final loginResult = await AuthData.shared.getData();

    if (loginResult.refreshToken.isEmpty || loginResult.accessToken.isEmpty) {
      return Left(FailureModel(code: "", message: "Refresh token not found"));
    }

    final request = AccessTokenRequest(
      refreshToken: loginResult.refreshToken,
      token: loginResult.accessToken,
    );

    final result = await apiCall(req: request);
    return await result.fold(
      (failure) async {
        return Left(failure.toModel());
      },
      (response) async {
        if (response.refreshToken.isNotEmpty && response.token.isNotEmpty) {
          LoginResponseModel oldData = await AuthData.shared.getData();
          final newData = oldData.copyWith(
            email: response.email,
            refreshToken: response.refreshToken,
            refreshTokenCreationTime: response.refreshTokenCreationTime,
            refreshTokenExpiryTime: response.refreshTokenExpiryTime,
            role: response.role,
            accessToken: response.token,
            tokenCreationTime: response.tokenCreationTime,
            tokenExpiryTime: response.tokenExpiryTime,
            username: response.userName,
          );
          await AuthData.shared.data(newData);
          return Right(const EmptyModel());
        } else {
          return Left(
            FailureModel(code: "", message: "Invalid token response"),
          );
        }
      },
    );
  }

  @override
  AccessTokenResponse convertResponse(Map<String, dynamic> json) {
    return AccessTokenResponse.fromJson(json['data'] ?? {});
  }
}
