part of 'models.dart';

@freezed
sealed class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(
      fromJson: DateTimeConverter.fromJson,
      toJson: DateTimeConverter.toJson,
    )
    required DateTime tokenCreationTime,
    @JsonKey(
      fromJson: DateTimeConverter.fromJson,
      toJson: DateTimeConverter.toJson,
    )
    required DateTime tokenExpiryTime,
    @JsonKey(
      fromJson: DateTimeConverter.fromJson,
      toJson: DateTimeConverter.toJson,
    )
    required DateTime refreshTokenCreationTime,
    @JsonKey(
      fromJson: DateTimeConverter.fromJson,
      toJson: DateTimeConverter.toJson,
    )
    required DateTime refreshTokenExpiryTime,
    @Default('') String accessToken,
    @Default('') String refreshToken,
    @Default(0) int id,
    @Default('') String username,
    @Default('') String email,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String gender,
    @Default('') String image,
    @Default('') String role,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  factory LoginResponseModel.empty() => LoginResponseModel(
    tokenCreationTime: DateTime.fromMillisecondsSinceEpoch(0),
    tokenExpiryTime: DateTime.fromMillisecondsSinceEpoch(0),
    refreshTokenCreationTime: DateTime.fromMillisecondsSinceEpoch(0),
    refreshTokenExpiryTime: DateTime.fromMillisecondsSinceEpoch(0),
    accessToken: '',
    refreshToken: '',
    id: 0,
    username: '',
    email: '',
    firstName: '',
    lastName: '',
    gender: '',
    image: '',
    role: '',
  );
}
