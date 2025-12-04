part of 'models.dart';

@freezed
sealed class ReactionsModel with _$ReactionsModel {
  const ReactionsModel._();

  const factory ReactionsModel({
    @Default(0) int likes,
    @Default(0) int dislikes,
  }) = _ReactionsModel;
}
