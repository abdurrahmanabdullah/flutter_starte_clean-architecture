// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedPostsResponseModel {

 int get id; String get title; String get body; List<String> get tags; int get userId; int get views; ReactionsModel get reactions;
/// Create a copy of PaginatedPostsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedPostsResponseModelCopyWith<PaginatedPostsResponseModel> get copyWith => _$PaginatedPostsResponseModelCopyWithImpl<PaginatedPostsResponseModel>(this as PaginatedPostsResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedPostsResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.views, views) || other.views == views)&&(identical(other.reactions, reactions) || other.reactions == reactions));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,const DeepCollectionEquality().hash(tags),userId,views,reactions);

@override
String toString() {
  return 'PaginatedPostsResponseModel(id: $id, title: $title, body: $body, tags: $tags, userId: $userId, views: $views, reactions: $reactions)';
}


}

/// @nodoc
abstract mixin class $PaginatedPostsResponseModelCopyWith<$Res>  {
  factory $PaginatedPostsResponseModelCopyWith(PaginatedPostsResponseModel value, $Res Function(PaginatedPostsResponseModel) _then) = _$PaginatedPostsResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String body, List<String> tags, int userId, int views, ReactionsModel reactions
});


$ReactionsModelCopyWith<$Res> get reactions;

}
/// @nodoc
class _$PaginatedPostsResponseModelCopyWithImpl<$Res>
    implements $PaginatedPostsResponseModelCopyWith<$Res> {
  _$PaginatedPostsResponseModelCopyWithImpl(this._self, this._then);

  final PaginatedPostsResponseModel _self;
  final $Res Function(PaginatedPostsResponseModel) _then;

/// Create a copy of PaginatedPostsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? body = null,Object? tags = null,Object? userId = null,Object? views = null,Object? reactions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,reactions: null == reactions ? _self.reactions : reactions // ignore: cast_nullable_to_non_nullable
as ReactionsModel,
  ));
}
/// Create a copy of PaginatedPostsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReactionsModelCopyWith<$Res> get reactions {
  
  return $ReactionsModelCopyWith<$Res>(_self.reactions, (value) {
    return _then(_self.copyWith(reactions: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedPostsResponseModel].
extension PaginatedPostsResponseModelPatterns on PaginatedPostsResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedPostsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedPostsResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedPostsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedPostsResponseModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedPostsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedPostsResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String body,  List<String> tags,  int userId,  int views,  ReactionsModel reactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedPostsResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.tags,_that.userId,_that.views,_that.reactions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String body,  List<String> tags,  int userId,  int views,  ReactionsModel reactions)  $default,) {final _that = this;
switch (_that) {
case _PaginatedPostsResponseModel():
return $default(_that.id,_that.title,_that.body,_that.tags,_that.userId,_that.views,_that.reactions);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String body,  List<String> tags,  int userId,  int views,  ReactionsModel reactions)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedPostsResponseModel() when $default != null:
return $default(_that.id,_that.title,_that.body,_that.tags,_that.userId,_that.views,_that.reactions);case _:
  return null;

}
}

}

/// @nodoc


class _PaginatedPostsResponseModel extends PaginatedPostsResponseModel {
  const _PaginatedPostsResponseModel({this.id = 0, this.title = '', this.body = '', final  List<String> tags = const [], this.userId = 0, this.views = 0, this.reactions = const ReactionsModel()}): _tags = tags,super._();
  

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String body;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  int userId;
@override@JsonKey() final  int views;
@override@JsonKey() final  ReactionsModel reactions;

/// Create a copy of PaginatedPostsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedPostsResponseModelCopyWith<_PaginatedPostsResponseModel> get copyWith => __$PaginatedPostsResponseModelCopyWithImpl<_PaginatedPostsResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedPostsResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.views, views) || other.views == views)&&(identical(other.reactions, reactions) || other.reactions == reactions));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,body,const DeepCollectionEquality().hash(_tags),userId,views,reactions);

@override
String toString() {
  return 'PaginatedPostsResponseModel(id: $id, title: $title, body: $body, tags: $tags, userId: $userId, views: $views, reactions: $reactions)';
}


}

/// @nodoc
abstract mixin class _$PaginatedPostsResponseModelCopyWith<$Res> implements $PaginatedPostsResponseModelCopyWith<$Res> {
  factory _$PaginatedPostsResponseModelCopyWith(_PaginatedPostsResponseModel value, $Res Function(_PaginatedPostsResponseModel) _then) = __$PaginatedPostsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String body, List<String> tags, int userId, int views, ReactionsModel reactions
});


@override $ReactionsModelCopyWith<$Res> get reactions;

}
/// @nodoc
class __$PaginatedPostsResponseModelCopyWithImpl<$Res>
    implements _$PaginatedPostsResponseModelCopyWith<$Res> {
  __$PaginatedPostsResponseModelCopyWithImpl(this._self, this._then);

  final _PaginatedPostsResponseModel _self;
  final $Res Function(_PaginatedPostsResponseModel) _then;

/// Create a copy of PaginatedPostsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? body = null,Object? tags = null,Object? userId = null,Object? views = null,Object? reactions = null,}) {
  return _then(_PaginatedPostsResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,reactions: null == reactions ? _self.reactions : reactions // ignore: cast_nullable_to_non_nullable
as ReactionsModel,
  ));
}

/// Create a copy of PaginatedPostsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReactionsModelCopyWith<$Res> get reactions {
  
  return $ReactionsModelCopyWith<$Res>(_self.reactions, (value) {
    return _then(_self.copyWith(reactions: value));
  });
}
}

/// @nodoc
mixin _$ReactionsModel {

 int get likes; int get dislikes;
/// Create a copy of ReactionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReactionsModelCopyWith<ReactionsModel> get copyWith => _$ReactionsModelCopyWithImpl<ReactionsModel>(this as ReactionsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReactionsModel&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes));
}


@override
int get hashCode => Object.hash(runtimeType,likes,dislikes);

@override
String toString() {
  return 'ReactionsModel(likes: $likes, dislikes: $dislikes)';
}


}

/// @nodoc
abstract mixin class $ReactionsModelCopyWith<$Res>  {
  factory $ReactionsModelCopyWith(ReactionsModel value, $Res Function(ReactionsModel) _then) = _$ReactionsModelCopyWithImpl;
@useResult
$Res call({
 int likes, int dislikes
});




}
/// @nodoc
class _$ReactionsModelCopyWithImpl<$Res>
    implements $ReactionsModelCopyWith<$Res> {
  _$ReactionsModelCopyWithImpl(this._self, this._then);

  final ReactionsModel _self;
  final $Res Function(ReactionsModel) _then;

/// Create a copy of ReactionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? likes = null,Object? dislikes = null,}) {
  return _then(_self.copyWith(
likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReactionsModel].
extension ReactionsModelPatterns on ReactionsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReactionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReactionsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReactionsModel value)  $default,){
final _that = this;
switch (_that) {
case _ReactionsModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReactionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReactionsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int likes,  int dislikes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReactionsModel() when $default != null:
return $default(_that.likes,_that.dislikes);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int likes,  int dislikes)  $default,) {final _that = this;
switch (_that) {
case _ReactionsModel():
return $default(_that.likes,_that.dislikes);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int likes,  int dislikes)?  $default,) {final _that = this;
switch (_that) {
case _ReactionsModel() when $default != null:
return $default(_that.likes,_that.dislikes);case _:
  return null;

}
}

}

/// @nodoc


class _ReactionsModel extends ReactionsModel {
  const _ReactionsModel({this.likes = 0, this.dislikes = 0}): super._();
  

@override@JsonKey() final  int likes;
@override@JsonKey() final  int dislikes;

/// Create a copy of ReactionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReactionsModelCopyWith<_ReactionsModel> get copyWith => __$ReactionsModelCopyWithImpl<_ReactionsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReactionsModel&&(identical(other.likes, likes) || other.likes == likes)&&(identical(other.dislikes, dislikes) || other.dislikes == dislikes));
}


@override
int get hashCode => Object.hash(runtimeType,likes,dislikes);

@override
String toString() {
  return 'ReactionsModel(likes: $likes, dislikes: $dislikes)';
}


}

/// @nodoc
abstract mixin class _$ReactionsModelCopyWith<$Res> implements $ReactionsModelCopyWith<$Res> {
  factory _$ReactionsModelCopyWith(_ReactionsModel value, $Res Function(_ReactionsModel) _then) = __$ReactionsModelCopyWithImpl;
@override @useResult
$Res call({
 int likes, int dislikes
});




}
/// @nodoc
class __$ReactionsModelCopyWithImpl<$Res>
    implements _$ReactionsModelCopyWith<$Res> {
  __$ReactionsModelCopyWithImpl(this._self, this._then);

  final _ReactionsModel _self;
  final $Res Function(_ReactionsModel) _then;

/// Create a copy of ReactionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? likes = null,Object? dislikes = null,}) {
  return _then(_ReactionsModel(
likes: null == likes ? _self.likes : likes // ignore: cast_nullable_to_non_nullable
as int,dislikes: null == dislikes ? _self.dislikes : dislikes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
