part of 'models.dart';

@freezed
sealed class PaginatedPostsResponseModel with _$PaginatedPostsResponseModel {
  const PaginatedPostsResponseModel._();

  const factory PaginatedPostsResponseModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String body,
    @Default([]) List<String> tags,
    @Default(0) int userId,
    @Default(0) int views,
    @Default(ReactionsModel()) ReactionsModel reactions,
  }) = _PaginatedPostsResponseModel;
}
