part of 'models.dart';

@freezed
sealed class ProfileResponseModel with _$ProfileResponseModel {
  const factory ProfileResponseModel({
    @Default(0) int id,
    @Default('') String email,
    @Default('') String username,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String gender,
    @Default('') String image,
  }) = _ProfileResponseModel;

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}
