// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseAuthResponse {
  FirebaseResponseType get type => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseAuthResponseCopyWith<FirebaseAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseAuthResponseCopyWith<$Res> {
  factory $FirebaseAuthResponseCopyWith(FirebaseAuthResponse value,
          $Res Function(FirebaseAuthResponse) then) =
      _$FirebaseAuthResponseCopyWithImpl<$Res>;
  $Res call({FirebaseResponseType type, String message});
}

/// @nodoc
class _$FirebaseAuthResponseCopyWithImpl<$Res>
    implements $FirebaseAuthResponseCopyWith<$Res> {
  _$FirebaseAuthResponseCopyWithImpl(this._value, this._then);

  final FirebaseAuthResponse _value;
  // ignore: unused_field
  final $Res Function(FirebaseAuthResponse) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirebaseResponseType,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FirebaseAuthResponseCopyWith<$Res>
    implements $FirebaseAuthResponseCopyWith<$Res> {
  factory _$$_FirebaseAuthResponseCopyWith(_$_FirebaseAuthResponse value,
          $Res Function(_$_FirebaseAuthResponse) then) =
      __$$_FirebaseAuthResponseCopyWithImpl<$Res>;
  @override
  $Res call({FirebaseResponseType type, String message});
}

/// @nodoc
class __$$_FirebaseAuthResponseCopyWithImpl<$Res>
    extends _$FirebaseAuthResponseCopyWithImpl<$Res>
    implements _$$_FirebaseAuthResponseCopyWith<$Res> {
  __$$_FirebaseAuthResponseCopyWithImpl(_$_FirebaseAuthResponse _value,
      $Res Function(_$_FirebaseAuthResponse) _then)
      : super(_value, (v) => _then(v as _$_FirebaseAuthResponse));

  @override
  _$_FirebaseAuthResponse get _value => super._value as _$_FirebaseAuthResponse;

  @override
  $Res call({
    Object? type = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_FirebaseAuthResponse(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FirebaseResponseType,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirebaseAuthResponse implements _FirebaseAuthResponse {
  _$_FirebaseAuthResponse(
      {this.type = FirebaseResponseType.base, this.message = EMPTY_STRING});

  @override
  @JsonKey()
  final FirebaseResponseType type;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'FirebaseAuthResponse(type: $type, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseAuthResponse &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FirebaseAuthResponseCopyWith<_$_FirebaseAuthResponse> get copyWith =>
      __$$_FirebaseAuthResponseCopyWithImpl<_$_FirebaseAuthResponse>(
          this, _$identity);
}

abstract class _FirebaseAuthResponse implements FirebaseAuthResponse {
  factory _FirebaseAuthResponse(
      {final FirebaseResponseType type,
      final String message}) = _$_FirebaseAuthResponse;

  @override
  FirebaseResponseType get type;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseAuthResponseCopyWith<_$_FirebaseAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
