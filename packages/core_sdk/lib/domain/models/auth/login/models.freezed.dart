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
mixin _$LoginRequestModel {

 String get username; String get password;
/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestModelCopyWith<LoginRequestModel> get copyWith => _$LoginRequestModelCopyWithImpl<LoginRequestModel>(this as LoginRequestModel, _$identity);

  /// Serializes this LoginRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestModelCopyWith<$Res>  {
  factory $LoginRequestModelCopyWith(LoginRequestModel value, $Res Function(LoginRequestModel) _then) = _$LoginRequestModelCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._self, this._then);

  final LoginRequestModel _self;
  final $Res Function(LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequestModel].
extension LoginRequestModelPatterns on LoginRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel():
return $default(_that.username,_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequestModel() when $default != null:
return $default(_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequestModel implements LoginRequestModel {
  const _LoginRequestModel({this.username = '', this.password = ''});
  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

@override@JsonKey() final  String username;
@override@JsonKey() final  String password;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestModelCopyWith<_LoginRequestModel> get copyWith => __$LoginRequestModelCopyWithImpl<_LoginRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestModelCopyWith<$Res> implements $LoginRequestModelCopyWith<$Res> {
  factory _$LoginRequestModelCopyWith(_LoginRequestModel value, $Res Function(_LoginRequestModel) _then) = __$LoginRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$LoginRequestModelCopyWithImpl<$Res>
    implements _$LoginRequestModelCopyWith<$Res> {
  __$LoginRequestModelCopyWithImpl(this._self, this._then);

  final _LoginRequestModel _self;
  final $Res Function(_LoginRequestModel) _then;

/// Create a copy of LoginRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_LoginRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LoginResponseModel {

@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime get tokenCreationTime;@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime get tokenExpiryTime;@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime get refreshTokenCreationTime;@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime get refreshTokenExpiryTime; String get accessToken; String get refreshToken; int get id; String get username; String get email; String get firstName; String get lastName; String get gender; String get image; String get role;
/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<LoginResponseModel> get copyWith => _$LoginResponseModelCopyWithImpl<LoginResponseModel>(this as LoginResponseModel, _$identity);

  /// Serializes this LoginResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseModel&&(identical(other.tokenCreationTime, tokenCreationTime) || other.tokenCreationTime == tokenCreationTime)&&(identical(other.tokenExpiryTime, tokenExpiryTime) || other.tokenExpiryTime == tokenExpiryTime)&&(identical(other.refreshTokenCreationTime, refreshTokenCreationTime) || other.refreshTokenCreationTime == refreshTokenCreationTime)&&(identical(other.refreshTokenExpiryTime, refreshTokenExpiryTime) || other.refreshTokenExpiryTime == refreshTokenExpiryTime)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokenCreationTime,tokenExpiryTime,refreshTokenCreationTime,refreshTokenExpiryTime,accessToken,refreshToken,id,username,email,firstName,lastName,gender,image,role);

@override
String toString() {
  return 'LoginResponseModel(tokenCreationTime: $tokenCreationTime, tokenExpiryTime: $tokenExpiryTime, refreshTokenCreationTime: $refreshTokenCreationTime, refreshTokenExpiryTime: $refreshTokenExpiryTime, accessToken: $accessToken, refreshToken: $refreshToken, id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image, role: $role)';
}


}

/// @nodoc
abstract mixin class $LoginResponseModelCopyWith<$Res>  {
  factory $LoginResponseModelCopyWith(LoginResponseModel value, $Res Function(LoginResponseModel) _then) = _$LoginResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime tokenCreationTime,@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime tokenExpiryTime,@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime refreshTokenCreationTime,@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime refreshTokenExpiryTime, String accessToken, String refreshToken, int id, String username, String email, String firstName, String lastName, String gender, String image, String role
});




}
/// @nodoc
class _$LoginResponseModelCopyWithImpl<$Res>
    implements $LoginResponseModelCopyWith<$Res> {
  _$LoginResponseModelCopyWithImpl(this._self, this._then);

  final LoginResponseModel _self;
  final $Res Function(LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokenCreationTime = null,Object? tokenExpiryTime = null,Object? refreshTokenCreationTime = null,Object? refreshTokenExpiryTime = null,Object? accessToken = null,Object? refreshToken = null,Object? id = null,Object? username = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? gender = null,Object? image = null,Object? role = null,}) {
  return _then(_self.copyWith(
tokenCreationTime: null == tokenCreationTime ? _self.tokenCreationTime : tokenCreationTime // ignore: cast_nullable_to_non_nullable
as DateTime,tokenExpiryTime: null == tokenExpiryTime ? _self.tokenExpiryTime : tokenExpiryTime // ignore: cast_nullable_to_non_nullable
as DateTime,refreshTokenCreationTime: null == refreshTokenCreationTime ? _self.refreshTokenCreationTime : refreshTokenCreationTime // ignore: cast_nullable_to_non_nullable
as DateTime,refreshTokenExpiryTime: null == refreshTokenExpiryTime ? _self.refreshTokenExpiryTime : refreshTokenExpiryTime // ignore: cast_nullable_to_non_nullable
as DateTime,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginResponseModel].
extension LoginResponseModelPatterns on LoginResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime tokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime tokenExpiryTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime refreshTokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime refreshTokenExpiryTime,  String accessToken,  String refreshToken,  int id,  String username,  String email,  String firstName,  String lastName,  String gender,  String image,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.tokenCreationTime,_that.tokenExpiryTime,_that.refreshTokenCreationTime,_that.refreshTokenExpiryTime,_that.accessToken,_that.refreshToken,_that.id,_that.username,_that.email,_that.firstName,_that.lastName,_that.gender,_that.image,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime tokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime tokenExpiryTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime refreshTokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime refreshTokenExpiryTime,  String accessToken,  String refreshToken,  int id,  String username,  String email,  String firstName,  String lastName,  String gender,  String image,  String role)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel():
return $default(_that.tokenCreationTime,_that.tokenExpiryTime,_that.refreshTokenCreationTime,_that.refreshTokenExpiryTime,_that.accessToken,_that.refreshToken,_that.id,_that.username,_that.email,_that.firstName,_that.lastName,_that.gender,_that.image,_that.role);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime tokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime tokenExpiryTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime refreshTokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson)  DateTime refreshTokenExpiryTime,  String accessToken,  String refreshToken,  int id,  String username,  String email,  String firstName,  String lastName,  String gender,  String image,  String role)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseModel() when $default != null:
return $default(_that.tokenCreationTime,_that.tokenExpiryTime,_that.refreshTokenCreationTime,_that.refreshTokenExpiryTime,_that.accessToken,_that.refreshToken,_that.id,_that.username,_that.email,_that.firstName,_that.lastName,_that.gender,_that.image,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseModel implements LoginResponseModel {
  const _LoginResponseModel({@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) required this.tokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) required this.tokenExpiryTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) required this.refreshTokenCreationTime, @JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) required this.refreshTokenExpiryTime, this.accessToken = '', this.refreshToken = '', this.id = 0, this.username = '', this.email = '', this.firstName = '', this.lastName = '', this.gender = '', this.image = '', this.role = ''});
  factory _LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

@override@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) final  DateTime tokenCreationTime;
@override@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) final  DateTime tokenExpiryTime;
@override@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) final  DateTime refreshTokenCreationTime;
@override@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) final  DateTime refreshTokenExpiryTime;
@override@JsonKey() final  String accessToken;
@override@JsonKey() final  String refreshToken;
@override@JsonKey() final  int id;
@override@JsonKey() final  String username;
@override@JsonKey() final  String email;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String gender;
@override@JsonKey() final  String image;
@override@JsonKey() final  String role;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseModelCopyWith<_LoginResponseModel> get copyWith => __$LoginResponseModelCopyWithImpl<_LoginResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseModel&&(identical(other.tokenCreationTime, tokenCreationTime) || other.tokenCreationTime == tokenCreationTime)&&(identical(other.tokenExpiryTime, tokenExpiryTime) || other.tokenExpiryTime == tokenExpiryTime)&&(identical(other.refreshTokenCreationTime, refreshTokenCreationTime) || other.refreshTokenCreationTime == refreshTokenCreationTime)&&(identical(other.refreshTokenExpiryTime, refreshTokenExpiryTime) || other.refreshTokenExpiryTime == refreshTokenExpiryTime)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tokenCreationTime,tokenExpiryTime,refreshTokenCreationTime,refreshTokenExpiryTime,accessToken,refreshToken,id,username,email,firstName,lastName,gender,image,role);

@override
String toString() {
  return 'LoginResponseModel(tokenCreationTime: $tokenCreationTime, tokenExpiryTime: $tokenExpiryTime, refreshTokenCreationTime: $refreshTokenCreationTime, refreshTokenExpiryTime: $refreshTokenExpiryTime, accessToken: $accessToken, refreshToken: $refreshToken, id: $id, username: $username, email: $email, firstName: $firstName, lastName: $lastName, gender: $gender, image: $image, role: $role)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseModelCopyWith<$Res> implements $LoginResponseModelCopyWith<$Res> {
  factory _$LoginResponseModelCopyWith(_LoginResponseModel value, $Res Function(_LoginResponseModel) _then) = __$LoginResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime tokenCreationTime,@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime tokenExpiryTime,@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime refreshTokenCreationTime,@JsonKey(fromJson: DateTimeConverter.fromJson, toJson: DateTimeConverter.toJson) DateTime refreshTokenExpiryTime, String accessToken, String refreshToken, int id, String username, String email, String firstName, String lastName, String gender, String image, String role
});




}
/// @nodoc
class __$LoginResponseModelCopyWithImpl<$Res>
    implements _$LoginResponseModelCopyWith<$Res> {
  __$LoginResponseModelCopyWithImpl(this._self, this._then);

  final _LoginResponseModel _self;
  final $Res Function(_LoginResponseModel) _then;

/// Create a copy of LoginResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokenCreationTime = null,Object? tokenExpiryTime = null,Object? refreshTokenCreationTime = null,Object? refreshTokenExpiryTime = null,Object? accessToken = null,Object? refreshToken = null,Object? id = null,Object? username = null,Object? email = null,Object? firstName = null,Object? lastName = null,Object? gender = null,Object? image = null,Object? role = null,}) {
  return _then(_LoginResponseModel(
tokenCreationTime: null == tokenCreationTime ? _self.tokenCreationTime : tokenCreationTime // ignore: cast_nullable_to_non_nullable
as DateTime,tokenExpiryTime: null == tokenExpiryTime ? _self.tokenExpiryTime : tokenExpiryTime // ignore: cast_nullable_to_non_nullable
as DateTime,refreshTokenCreationTime: null == refreshTokenCreationTime ? _self.refreshTokenCreationTime : refreshTokenCreationTime // ignore: cast_nullable_to_non_nullable
as DateTime,refreshTokenExpiryTime: null == refreshTokenExpiryTime ? _self.refreshTokenExpiryTime : refreshTokenExpiryTime // ignore: cast_nullable_to_non_nullable
as DateTime,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
