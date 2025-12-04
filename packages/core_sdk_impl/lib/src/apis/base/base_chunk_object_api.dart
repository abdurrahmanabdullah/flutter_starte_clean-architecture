import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk_impl/core_sdk_impl.dart';
import 'package:core_sdk_impl/src/apis/auth/access_token/access_token_api.dart';
import 'package:core_sdk_impl/src/data/auth_data.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:json_client/json_client.dart';

import 'models/models.dart';

abstract class BaseJsonChunkObjectApi<Req extends BaseJson, Res> {
  final String path;
  final ApiMethod method;
  final bool refreshToken;
  final bool sendToken;

  BaseHttpJsonChunkObjectClient? _client;

  BaseHttpJsonChunkObjectClient get client {
    _client ??= BaseHttpJsonChunkObjectClient(
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
    headers.addAll({'Authorization': 'Bearer ${dataOption.accessToken}'});

    return headers;
  }

  BaseJsonChunkObjectApi({
    required this.path,
    required this.method,
    required this.refreshToken,
    this.sendToken = true,
  });

  Stream<Either<ApiFailureResponse, Res>> apiCall({
    Map<String, String?>? headers,
    Map<String, dynamic>? pathParams,
    required Req req,
    bool stopRefreshToken = false,
    String? correlationId,
  }) async* {
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

    try {
      await for (final result in client.call<dynamic, Res, ApiFailureResponse>(
        path: newPath,
        method: method == ApiMethod.formData ? ApiMethod.post : method,
        pathParams: pathParams,
        req: request,
        headers: newHeaders,
        convertSuccess: convertResponse,
        convertError: _convertErrorResponse,
      )) {
        if (result.isSuccess) {
          yield Right(result.response as Res);
        } else if (result.isError) {
          if (result.code == 401 && refreshToken && stopRefreshToken == false) {
            final flag = await _refreshToken();
            if (flag) {
              yield* apiCall(
                headers: headers,
                pathParams: pathParams,
                req: req,
                stopRefreshToken: true,
              );
              return;
            } else {
              await AuthData.shared.clear();
            }
          }
          yield Left(result.errorResponse!);
        } else if (result.exception != null) {
          yield Left(_convertFromException(result.exception!));
        }
      }
    } catch (e) {
      yield Left(
        _convertFromException(e is Exception ? e : Exception(e.toString())),
      );
    }
  }

  Future<bool> _refreshToken() async {
    final result = await DataGetIt.shared.get<AccessTokenApi>().call();
    return result.isRight();
  }

  Res convertResponse(Map<String, dynamic> json);

  ApiFailureResponse _convertErrorResponse(dynamic data, Response? response) {
    if (data is String) {
      data = {'message': data, 'status': response?.statusCode};
    }
    data['status'] = response?.statusCode;
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
    log("main error code: ${response?.statusCode ?? 400}");
    return response?.statusCode ?? 400;
  }
}
