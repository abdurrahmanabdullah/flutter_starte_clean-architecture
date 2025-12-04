part of 'notification_api.dart';

@JsonSerializable(explicitToJson: true)
class NotificationResponse extends BaseJson {
  @JsonKey(name: "data", defaultValue: [])
  final List<NotificationData> data;

  NotificationResponse({required this.data});

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NotificationData {
  @JsonKey(name: "name", defaultValue: "")
  final String name;

  @JsonKey(name: "city", defaultValue: "")
  final String city;

  @JsonKey(name: "country", defaultValue: "")
  final String country;

  @JsonKey(name: "iata", defaultValue: "")
  final String iata;

  NotificationData({
    required this.name,
    required this.city,
    required this.country,
    required this.iata,
  });

  NotificationResponseModel toModel() => NotificationResponseModel(
    name: name,
    city: city,
    country: country,
    iata: iata,
  );

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDataToJson(this);
}
