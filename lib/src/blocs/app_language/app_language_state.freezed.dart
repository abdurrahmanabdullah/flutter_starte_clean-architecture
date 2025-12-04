// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_language_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppLanguageState {

 List<LanguageModel> get languages; LanguageModel get lang;
/// Create a copy of AppLanguageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppLanguageStateCopyWith<AppLanguageState> get copyWith => _$AppLanguageStateCopyWithImpl<AppLanguageState>(this as AppLanguageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLanguageState&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(languages),lang);

@override
String toString() {
  return 'AppLanguageState(languages: $languages, lang: $lang)';
}


}

/// @nodoc
abstract mixin class $AppLanguageStateCopyWith<$Res>  {
  factory $AppLanguageStateCopyWith(AppLanguageState value, $Res Function(AppLanguageState) _then) = _$AppLanguageStateCopyWithImpl;
@useResult
$Res call({
 List<LanguageModel> languages, LanguageModel lang
});


$LanguageModelCopyWith<$Res> get lang;

}
/// @nodoc
class _$AppLanguageStateCopyWithImpl<$Res>
    implements $AppLanguageStateCopyWith<$Res> {
  _$AppLanguageStateCopyWithImpl(this._self, this._then);

  final AppLanguageState _self;
  final $Res Function(AppLanguageState) _then;

/// Create a copy of AppLanguageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? languages = null,Object? lang = null,}) {
  return _then(_self.copyWith(
languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageModel>,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as LanguageModel,
  ));
}
/// Create a copy of AppLanguageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get lang {
  
  return $LanguageModelCopyWith<$Res>(_self.lang, (value) {
    return _then(_self.copyWith(lang: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppLanguageState].
extension AppLanguageStatePatterns on AppLanguageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppLanguageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppLanguageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppLanguageState value)  $default,){
final _that = this;
switch (_that) {
case _AppLanguageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppLanguageState value)?  $default,){
final _that = this;
switch (_that) {
case _AppLanguageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LanguageModel> languages,  LanguageModel lang)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppLanguageState() when $default != null:
return $default(_that.languages,_that.lang);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LanguageModel> languages,  LanguageModel lang)  $default,) {final _that = this;
switch (_that) {
case _AppLanguageState():
return $default(_that.languages,_that.lang);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LanguageModel> languages,  LanguageModel lang)?  $default,) {final _that = this;
switch (_that) {
case _AppLanguageState() when $default != null:
return $default(_that.languages,_that.lang);case _:
  return null;

}
}

}

/// @nodoc


class _AppLanguageState implements AppLanguageState {
  const _AppLanguageState({required final  List<LanguageModel> languages, required this.lang}): _languages = languages;
  

 final  List<LanguageModel> _languages;
@override List<LanguageModel> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override final  LanguageModel lang;

/// Create a copy of AppLanguageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppLanguageStateCopyWith<_AppLanguageState> get copyWith => __$AppLanguageStateCopyWithImpl<_AppLanguageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppLanguageState&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.lang, lang) || other.lang == lang));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_languages),lang);

@override
String toString() {
  return 'AppLanguageState(languages: $languages, lang: $lang)';
}


}

/// @nodoc
abstract mixin class _$AppLanguageStateCopyWith<$Res> implements $AppLanguageStateCopyWith<$Res> {
  factory _$AppLanguageStateCopyWith(_AppLanguageState value, $Res Function(_AppLanguageState) _then) = __$AppLanguageStateCopyWithImpl;
@override @useResult
$Res call({
 List<LanguageModel> languages, LanguageModel lang
});


@override $LanguageModelCopyWith<$Res> get lang;

}
/// @nodoc
class __$AppLanguageStateCopyWithImpl<$Res>
    implements _$AppLanguageStateCopyWith<$Res> {
  __$AppLanguageStateCopyWithImpl(this._self, this._then);

  final _AppLanguageState _self;
  final $Res Function(_AppLanguageState) _then;

/// Create a copy of AppLanguageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? languages = null,Object? lang = null,}) {
  return _then(_AppLanguageState(
languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<LanguageModel>,lang: null == lang ? _self.lang : lang // ignore: cast_nullable_to_non_nullable
as LanguageModel,
  ));
}

/// Create a copy of AppLanguageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get lang {
  
  return $LanguageModelCopyWith<$Res>(_self.lang, (value) {
    return _then(_self.copyWith(lang: value));
  });
}
}

// dart format on
