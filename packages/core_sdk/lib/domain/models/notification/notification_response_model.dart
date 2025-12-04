part of 'models.dart';

@freezed
sealed class NotificationResponseModel with _$NotificationResponseModel {
  const NotificationResponseModel._();

  const factory NotificationResponseModel({
    @Default('') String name,
    @Default('') String city,
    @Default('') String country,
    @Default('') String iata,
  }) = _NotificationResponseModel;
}
