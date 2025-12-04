// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenRequest _$AccessTokenRequestFromJson(Map<String, dynamic> json) =>
    AccessTokenRequest(
      refreshToken: json['refreshToken'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$AccessTokenRequestToJson(AccessTokenRequest instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'token': instance.token,
    };

AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) =>
    AccessTokenResponse(
      userName: json['userName'] as String? ?? '',
      role: json['role'] as String,
      token: json['token'] as String? ?? '',
      tokenCreationTime: DateTimeConverter.fromJson(
        json['tokenCreationTime'] as String,
      ),
      tokenExpiryTime: DateTimeConverter.fromJson(
        json['tokenExpiryTime'] as String,
      ),
      refreshToken: json['refreshToken'] as String? ?? '',
      refreshTokenCreationTime: DateTimeConverter.fromJson(
        json['refreshTokenCreationTime'] as String,
      ),
      refreshTokenExpiryTime: DateTimeConverter.fromJson(
        json['refreshTokenExpiryTime'] as String,
      ),
      email: json['email'] as String? ?? '',
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
  AccessTokenResponse instance,
) => <String, dynamic>{
  'userName': instance.userName,
  'role': instance.role,
  'token': instance.token,
  'tokenCreationTime': DateTimeConverter.toJson(instance.tokenCreationTime),
  'tokenExpiryTime': DateTimeConverter.toJson(instance.tokenExpiryTime),
  'refreshToken': instance.refreshToken,
  'refreshTokenCreationTime': DateTimeConverter.toJson(
    instance.refreshTokenCreationTime,
  ),
  'refreshTokenExpiryTime': DateTimeConverter.toJson(
    instance.refreshTokenExpiryTime,
  ),
  'email': instance.email,
};
