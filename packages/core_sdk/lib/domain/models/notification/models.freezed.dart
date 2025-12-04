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
mixin _$NotificationResponseModel {

 String get name; String get city; String get country; String get iata;
/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationResponseModelCopyWith<NotificationResponseModel> get copyWith => _$NotificationResponseModelCopyWithImpl<NotificationResponseModel>(this as NotificationResponseModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationResponseModel&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.iata, iata) || other.iata == iata));
}


@override
int get hashCode => Object.hash(runtimeType,name,city,country,iata);

@override
String toString() {
  return 'NotificationResponseModel(name: $name, city: $city, country: $country, iata: $iata)';
}


}

/// @nodoc
abstract mixin class $NotificationResponseModelCopyWith<$Res>  {
  factory $NotificationResponseModelCopyWith(NotificationResponseModel value, $Res Function(NotificationResponseModel) _then) = _$NotificationResponseModelCopyWithImpl;
@useResult
$Res call({
 String name, String city, String country, String iata
});




}
/// @nodoc
class _$NotificationResponseModelCopyWithImpl<$Res>
    implements $NotificationResponseModelCopyWith<$Res> {
  _$NotificationResponseModelCopyWithImpl(this._self, this._then);

  final NotificationResponseModel _self;
  final $Res Function(NotificationResponseModel) _then;

/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? city = null,Object? country = null,Object? iata = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,iata: null == iata ? _self.iata : iata // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationResponseModel].
extension NotificationResponseModelPatterns on NotificationResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String city,  String country,  String iata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
return $default(_that.name,_that.city,_that.country,_that.iata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String city,  String country,  String iata)  $default,) {final _that = this;
switch (_that) {
case _NotificationResponseModel():
return $default(_that.name,_that.city,_that.country,_that.iata);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String city,  String country,  String iata)?  $default,) {final _that = this;
switch (_that) {
case _NotificationResponseModel() when $default != null:
return $default(_that.name,_that.city,_that.country,_that.iata);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationResponseModel extends NotificationResponseModel {
  const _NotificationResponseModel({this.name = '', this.city = '', this.country = '', this.iata = ''}): super._();
  

@override@JsonKey() final  String name;
@override@JsonKey() final  String city;
@override@JsonKey() final  String country;
@override@JsonKey() final  String iata;

/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationResponseModelCopyWith<_NotificationResponseModel> get copyWith => __$NotificationResponseModelCopyWithImpl<_NotificationResponseModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationResponseModel&&(identical(other.name, name) || other.name == name)&&(identical(other.city, city) || other.city == city)&&(identical(other.country, country) || other.country == country)&&(identical(other.iata, iata) || other.iata == iata));
}


@override
int get hashCode => Object.hash(runtimeType,name,city,country,iata);

@override
String toString() {
  return 'NotificationResponseModel(name: $name, city: $city, country: $country, iata: $iata)';
}


}

/// @nodoc
abstract mixin class _$NotificationResponseModelCopyWith<$Res> implements $NotificationResponseModelCopyWith<$Res> {
  factory _$NotificationResponseModelCopyWith(_NotificationResponseModel value, $Res Function(_NotificationResponseModel) _then) = __$NotificationResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String city, String country, String iata
});




}
/// @nodoc
class __$NotificationResponseModelCopyWithImpl<$Res>
    implements _$NotificationResponseModelCopyWith<$Res> {
  __$NotificationResponseModelCopyWithImpl(this._self, this._then);

  final _NotificationResponseModel _self;
  final $Res Function(_NotificationResponseModel) _then;

/// Create a copy of NotificationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? city = null,Object? country = null,Object? iata = null,}) {
  return _then(_NotificationResponseModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,iata: null == iata ? _self.iata : iata // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
