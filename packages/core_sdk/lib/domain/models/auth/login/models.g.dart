// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) =>
    _LoginRequestModel(
      username: json['username'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$LoginRequestModelToJson(_LoginRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      tokenCreationTime: DateTimeConverter.fromJson(
        json['tokenCreationTime'] as String,
      ),
      tokenExpiryTime: DateTimeConverter.fromJson(
        json['tokenExpiryTime'] as String,
      ),
      refreshTokenCreationTime: DateTimeConverter.fromJson(
        json['refreshTokenCreationTime'] as String,
      ),
      refreshTokenExpiryTime: DateTimeConverter.fromJson(
        json['refreshTokenExpiryTime'] as String,
      ),
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 0,
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      image: json['image'] as String? ?? '',
      role: json['role'] as String? ?? '',
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'tokenCreationTime': DateTimeConverter.toJson(instance.tokenCreationTime),
      'tokenExpiryTime': DateTimeConverter.toJson(instance.tokenExpiryTime),
      'refreshTokenCreationTime': DateTimeConverter.toJson(
        instance.refreshTokenCreationTime,
      ),
      'refreshTokenExpiryTime': DateTimeConverter.toJson(
        instance.refreshTokenExpiryTime,
      ),
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
      'role': instance.role,
    };
