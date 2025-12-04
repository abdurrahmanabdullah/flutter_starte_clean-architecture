import 'dart:convert';

import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk_impl/src/apis/base/models/models.dart';
import 'package:flutter/services.dart';

import '../default_imports.dart';

part 'notification_api.g.dart';
part 'notification_response.dart';

@singleton
class NotificationApi
    extends BaseJsonObjectApi<EmptyDataModel, List<NotificationResponseModel>> {
  NotificationApi()
    : super(
        path: ApiEndpoints.notificationList,
        method: ApiMethod.get,
        refreshToken: true,
      );

  Future<Either<FailureModel, List<NotificationResponseModel>>> call() async {
    try {
      final response = await rootBundle.loadString(
        ApiEndpoints.notificationList,
      );
      final notification = NotificationResponse.fromJson(
        jsonDecode(response),
      ).data.map((e) => e.toModel()).toList();
      Logger.shared.log("notifications.json (SUCCESS): $notification");
      return Right(notification);
    } catch (e, stacktrace) {
      Logger.shared.log(
        "notifications.json (FAILURE+): $e | stacktrace: ${stacktrace.toString()}",
      );

      return Left(
        FailureModel(
          message: "Failed to load local notification data",
          code: e.toString(),
        ),
      );
    }
  }

  @override
  List<NotificationResponseModel> convertResponse(Map<String, dynamic> json) {
    final response = NotificationResponse.fromJson(json);
    return response.data.map((e) => e.toModel()).toList();
  }
}
