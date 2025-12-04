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
mixin _$ProfileResponseModel {

 int get id; String get email; String get username; String get firstName; String get lastName; String get gender; String get image;
/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseModelCopyWith<ProfileResponseModel> get copyWith => _$ProfileResponseModelCopyWithImpl<ProfileResponseModel>(this as ProfileResponseModel, _$identity);

  /// Serializes this ProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,firstName,lastName,gender,image);

@override
String toString() {
  return 'ProfileResponseModel(id: $id, email: $email, username: $username, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image)';
}


}

/// @nodoc
abstract mixin class $ProfileResponseModelCopyWith<$Res>  {
  factory $ProfileResponseModelCopyWith(ProfileResponseModel value, $Res Function(ProfileResponseModel) _then) = _$ProfileResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String email, String username, String firstName, String lastName, String gender, String image
});




}
/// @nodoc
class _$ProfileResponseModelCopyWithImpl<$Res>
    implements $ProfileResponseModelCopyWith<$Res> {
  _$ProfileResponseModelCopyWithImpl(this._self, this._then);

  final ProfileResponseModel _self;
  final $Res Function(ProfileResponseModel) _then;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? username = null,Object? firstName = null,Object? lastName = null,Object? gender = null,Object? image = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileResponseModel].
extension ProfileResponseModelPatterns on ProfileResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String username,  String firstName,  String lastName,  String gender,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.firstName,_that.lastName,_that.gender,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String username,  String firstName,  String lastName,  String gender,  String image)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseModel():
return $default(_that.id,_that.email,_that.username,_that.firstName,_that.lastName,_that.gender,_that.image);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String username,  String firstName,  String lastName,  String gender,  String image)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponseModel() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.firstName,_that.lastName,_that.gender,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponseModel implements ProfileResponseModel {
  const _ProfileResponseModel({this.id = 0, this.email = '', this.username = '', this.firstName = '', this.lastName = '', this.gender = '', this.image = ''});
  factory _ProfileResponseModel.fromJson(Map<String, dynamic> json) => _$ProfileResponseModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String email;
@override@JsonKey() final  String username;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String image;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseModelCopyWith<_ProfileResponseModel> get copyWith => __$ProfileResponseModelCopyWithImpl<_ProfileResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,firstName,lastName,gender,image);

@override
String toString() {
  return 'ProfileResponseModel(id: $id, email: $email, username: $username, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseModelCopyWith<$Res> implements $ProfileResponseModelCopyWith<$Res> {
  factory _$ProfileResponseModelCopyWith(_ProfileResponseModel value, $Res Function(_ProfileResponseModel) _then) = __$ProfileResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String username, String firstName, String lastName, String gender, String image
});




}
/// @nodoc
class __$ProfileResponseModelCopyWithImpl<$Res>
    implements _$ProfileResponseModelCopyWith<$Res> {
  __$ProfileResponseModelCopyWithImpl(this._self, this._then);

  final _ProfileResponseModel _self;
  final $Res Function(_ProfileResponseModel) _then;

/// Create a copy of ProfileResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = null,Object? firstName = null,Object? lastName = null,Object? gender = null,Object? image = null,}) {
  return _then(_ProfileResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
