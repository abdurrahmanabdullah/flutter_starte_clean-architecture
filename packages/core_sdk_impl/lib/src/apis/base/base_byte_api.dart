import 'dart:io';

import 'package:common_sdk/common_sdk.dart';
import 'package:core_sdk_impl/core_sdk_impl.dart';
import 'package:core_sdk_impl/src/data/auth_data.dart';
import 'package:core_sdk_impl/src/data_get_it.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:json_client/http_client/http_client.dart';

import 'models/models.dart';

abstract class BaseByteApi<Res> {
  final String path;
  final ApiMethod method;
  final bool refreshToken;
  final bool sendToken;

  Dio? _dio;

  BaseByteApi({
    required this.path,
    required this.method,
    this.refreshToken = false,
    this.sendToken = true,
  });

  NetworkConfig get networkConfig => DataGetIt.shared.get();

  Dio get dio {
    _dio ??= Dio(
      BaseOptions(
        baseUrl: networkConfig.baseUrl,
        responseType: ResponseType.bytes,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );
    return _dio!;
  }

  Future<Map<String, String>> get defaultHeaders async {
    final headers = <String, String>{'cache-control': 'no-cache'};

    if (kIsWeb) {
      headers['platform'] = 'Web';
    } else if (Platform.isAndroid) {
      headers['platform'] = 'Android';
    } else if (Platform.isIOS) {
      headers['platform'] = 'IOS';
    } else if (Platform.isMacOS) {
      headers['platform'] = 'MacOS';
    } else if (Platform.isWindows) {
      headers['platform'] = 'Windows';
    } else {
      headers['platform'] = 'Unknown';
    }

    if (sendToken) {
      final authData = await AuthData.shared.getData();
      headers['Authorization'] = 'Bearer ${authData.accessToken}';
    }

    return headers;
  }

  Future<Either<ApiFailureResponse, Res>> apiCall({
    Map<String, String>? headers,
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? pathParams,
    dynamic body,
    bool stopRefreshToken = false,
  }) async {
    try {
      var newPath = path;
      for (final key in pathParams?.keys.toList() ?? []) {
        newPath = newPath.replaceAll('{$key}', pathParams?[key] ?? '');
      }

      final mergedHeaders = <String, String>{}
        ..addAll(await defaultHeaders)
        ..addAll(headers ?? {});

      final response = await dio.request<List<int>>(
        newPath,
        data: body,
        queryParameters: queryParams,
        options: Options(
          method: _methodToString(method),
          headers: mergedHeaders,
          responseType: ResponseType.bytes,
        ),
      );

      final converted = await convertResponse(response.data!);
      return Right(converted);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 &&
          refreshToken &&
          stopRefreshToken == false) {
        final refreshed = await _refreshToken();
        if (refreshed) {
          return apiCall(
            headers: headers,
            queryParams: queryParams,
            pathParams: pathParams,
            body: body,
            stopRefreshToken: true,
          );
        }
      }
      return Left(ApiFailureResponse.fromException(e));
    } catch (e) {
      return Left(ApiFailureResponse.fromException(e as Exception));
    }
  }

  Future<Res> convertResponse(List<int> bytes);

  Future<bool> _refreshToken() async {
    // Example placeholder
    return false;
  }

  String _methodToString(ApiMethod method) {
    switch (method) {
      case ApiMethod.get:
        return 'GET';
      case ApiMethod.post:
        return 'POST';
      case ApiMethod.put:
        return 'PUT';
      case ApiMethod.delete:
        return 'DELETE';
      default:
        return 'GET';
    }
  }
}
