part of 'access_token_api.dart';

@JsonSerializable(explicitToJson: true)
class AccessTokenRequest extends BaseJson {
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  @JsonKey(name: 'token')
  final String token;

  AccessTokenRequest({required this.refreshToken, required this.token});

  @override
  Map<String, dynamic> toJson() => _$AccessTokenRequestToJson(this);
}
