import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk_impl/core_sdk_impl.dart';
import 'package:core_sdk_impl/src/apis/auth/access_token/access_token_api.dart';
import 'package:core_sdk_impl/src/data/auth_data.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:json_client/json_client.dart';

import 'models/models.dart';

abstract class BaseJsonObjectSearchApi<Req extends BaseJson, Res> {
  final String path;
  final ApiMethod method;
  final bool refreshToken;
  final bool sendToken;

  BaseHttpJsonObjectClient? _client;

  BaseHttpJsonObjectClient get client {
    _client ??= BaseHttpJsonObjectClient(
      baseUrl: networkConfig.progressiveSearchUrl,
      options: BaseHttpJsonObjectClientOptions(),
      onTransformRawData: onTransformRawData,
      onStatusCodeTransform: onStatusCodeTransform,
    );

    return _client!;
  }

  NetworkConfig get networkConfig => DataGetIt.shared.get();

  Future<Map<String, String?>> get defaultHeaders async {
    final headers = {
      'cache-control': 'no-cache',
      'Content-Type': 'application/json',
      'Referer': networkConfig.baseUrl,
    };
    if (kIsWeb) {
      headers.addAll({"platform": "Web"});
    } else {
      if (Platform.isAndroid) {
        headers.addAll({"platform": "Android"});
      } else if (Platform.isIOS) {
        headers.addAll({"platform": "IOS"});
      } else if (Platform.isMacOS) {
        headers.addAll({"platform": "MacOS"});
      } else if (Platform.isWindows) {
        headers.addAll({"platform": "Windows"});
      } else {
        headers.addAll({"platform": "Unknown"});
      }
    }

    final dataOption = await AuthData.shared.getData();
    if (sendToken) {
      headers.addAll({'Authorization': 'Bearer ${dataOption.accessToken}'});
    }

    return headers;
  }

  BaseJsonObjectSearchApi({
    required this.path,
    required this.method,
    required this.refreshToken,
    this.sendToken = true,
  });

  Future<Either<ApiFailureResponse, Res>> apiCall({
    Map<String, String?>? headers,
    Map<String, dynamic>? pathParams,
    required Req req,
    bool stopRefreshToken = false,
    String? correlationId,
  }) async {
    var newPath = path;
    for (final key in pathParams?.keys.toList() ?? []) {
      newPath = newPath.replaceAll('{$key}', pathParams?[key] ?? '');
    }
    final newHeaders = <String, String?>{};
    newHeaders.addAll(await defaultHeaders);
    if (method == ApiMethod.formData) {
      newHeaders.addAll({'Content-Type': 'multipart/form-data'});
    }
    newHeaders.addAll(headers ?? {});
    dynamic request = req;
    if (method == ApiMethod.formData) {
      if (req is! BaseFormData) {
        throw Exception("To use formData provide BaseFormData as request");
      }
      final newReq = req as BaseFormData;
      request = await newReq.toFormData();
    }

    final m = method == ApiMethod.formData ? ApiMethod.post : method;

    final result = await client.call<dynamic, Res, ApiFailureResponse>(
      path: newPath,
      method: m,
      pathParams: pathParams,
      req: request,
      headers: newHeaders,
      convertSuccess: convertResponse,
      convertError: _convertErrorResponse,
    );
    if (result.isSuccess) {
      return Right(result.response as Res);
    } else if (result.isError) {
      if (result.code == 401) {
        if (refreshToken && stopRefreshToken == false) {
          final flag = await _refreshToken();
          if (flag) {
            return await apiCall(
              headers: headers,
              pathParams: pathParams,
              req: req,
              stopRefreshToken: true,
            );
          } else {
            await AuthData.shared.clear();
          }
        }
      }

      return Left(result.errorResponse!);
    }
    return Left(_convertFromException(result.exception));
  }

  Future<bool> _refreshToken() async {
    final result = await DataGetIt.shared.get<AccessTokenApi>().call();
    return result.isRight();
  }

  Res convertResponse(Map<String, dynamic> json);

  ApiFailureResponse _convertErrorResponse(dynamic data) {
    return ApiFailureResponse.fromJson(data);
  }

  ApiFailureResponse _convertFromException(Exception? data) {
    return ApiFailureResponse.fromException(data!);
  }

  Map<String, dynamic> onTransformRawData(
    String? jsonString,
    Response<dynamic>? _,
  ) {
    return json.decode(
      jsonString == null
          ? '{}'
          : jsonString.isEmpty
          ? '{}'
          : jsonString,
    );
  }

  int onStatusCodeTransform(Map<String, dynamic> data, Response? response) {
    if (data['isSuccess'] == false) {
      return 400;
    } else {
      return response?.statusCode ?? 400;
    }
  }
}
