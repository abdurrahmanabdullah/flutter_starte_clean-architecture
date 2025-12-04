import 'dart:convert';

import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk_impl/src/apis/base/models/models.dart';

import '../default_imports.dart';

part 'profile_api.g.dart';
part 'profile_response.dart';

@singleton
class ProfileApi
    extends BaseJsonObjectApi<EmptyDataModel, ProfileResponseModel> {
  ProfileApi()
    : super(
        path: ApiEndpoints.getUserProfile,
        method: ApiMethod.get,
        refreshToken: true,
      );

  Future<Either<FailureModel, ProfileResponseModel>> call() async {
    final request = EmptyDataModel();
    final response = await apiCall(req: request);

    return await response.fold(
      (failure) async {
        Logger.shared.log("ProfileAPI (FAILURE): ${failure.toModel()}");
        return Left(failure.toModel());
      },
      (response) async {
        Logger.shared.log("ProfileAPI (SUCCESS): $response");
        return Right(response);
      },
    );
  }

  @override
  ProfileResponseModel convertResponse(Map<String, dynamic> json) {
    try {
      final response = ProfileResponse.fromJson(json);
      return response.toModel();
    } catch (e) {
      Logger.shared.log("Error parsing user profile: $e");
      throw Exception("Failed to parse user profile response");
    }
  }

  @override
  Map<String, dynamic> onTransformRawData(String? jsonString, _) {
    if (jsonString == null || jsonString.isEmpty || jsonString.trim().isEmpty) {
      return {"data": {}};
    }

    try {
      final json = jsonDecode(jsonString);
      if (json is Map<String, dynamic> && json.containsKey('data')) {
        return json;
      }
      return {"data": json};
    } on FormatException catch (e) {
      Logger.shared.log('JSON Decode Error: $e');
      Logger.shared.log('Raw response that failed: $jsonString');
      return {"data": {}};
    }
  }
}
