part of 'access_token_api.dart';

@JsonSerializable(explicitToJson: true)
class AccessTokenResponse {
  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;

  @JsonKey(name: 'role', defaultValue: null)
  final String role;

  @JsonKey(name: 'token', defaultValue: '')
  final String token;

  @JsonKey(
    name: 'tokenCreationTime',
    fromJson: DateTimeConverter.fromJson,
    toJson: DateTimeConverter.toJson,
  )
  final DateTime tokenCreationTime;

  @JsonKey(
    name: 'tokenExpiryTime',
    fromJson: DateTimeConverter.fromJson,
    toJson: DateTimeConverter.toJson,
  )
  final DateTime tokenExpiryTime;

  @JsonKey(name: 'refreshToken', defaultValue: '')
  final String refreshToken;

  @JsonKey(
    name: 'refreshTokenCreationTime',
    fromJson: DateTimeConverter.fromJson,
    toJson: DateTimeConverter.toJson,
  )
  final DateTime refreshTokenCreationTime;

  @JsonKey(
    name: 'refreshTokenExpiryTime',
    fromJson: DateTimeConverter.fromJson,
    toJson: DateTimeConverter.toJson,
  )
  final DateTime refreshTokenExpiryTime;

  @JsonKey(name: 'email', defaultValue: '')
  final String email;

  const AccessTokenResponse({
    required this.userName,
    required this.role,
    required this.token,
    required this.tokenCreationTime,
    required this.tokenExpiryTime,
    required this.refreshToken,
    required this.refreshTokenCreationTime,
    required this.refreshTokenExpiryTime,
    required this.email,
  });

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenResponseToJson(this);
}
