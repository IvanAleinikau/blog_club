// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationStatusState {
  bool get isAuthorised => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStatusStateCopyWith<AuthenticationStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatusStateCopyWith<$Res> {
  factory $AuthenticationStatusStateCopyWith(AuthenticationStatusState value,
          $Res Function(AuthenticationStatusState) then) =
      _$AuthenticationStatusStateCopyWithImpl<$Res>;
  $Res call({bool isAuthorised, bool isLoading});
}

/// @nodoc
class _$AuthenticationStatusStateCopyWithImpl<$Res>
    implements $AuthenticationStatusStateCopyWith<$Res> {
  _$AuthenticationStatusStateCopyWithImpl(this._value, this._then);

  final AuthenticationStatusState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationStatusState) _then;

  @override
  $Res call({
    Object? isAuthorised = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthorised: isAuthorised == freezed
          ? _value.isAuthorised
          : isAuthorised // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationStatusStateCopyWith<$Res>
    implements $AuthenticationStatusStateCopyWith<$Res> {
  factory _$$_AuthenticationStatusStateCopyWith(
          _$_AuthenticationStatusState value,
          $Res Function(_$_AuthenticationStatusState) then) =
      __$$_AuthenticationStatusStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuthorised, bool isLoading});
}

/// @nodoc
class __$$_AuthenticationStatusStateCopyWithImpl<$Res>
    extends _$AuthenticationStatusStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStatusStateCopyWith<$Res> {
  __$$_AuthenticationStatusStateCopyWithImpl(
      _$_AuthenticationStatusState _value,
      $Res Function(_$_AuthenticationStatusState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationStatusState));

  @override
  _$_AuthenticationStatusState get _value =>
      super._value as _$_AuthenticationStatusState;

  @override
  $Res call({
    Object? isAuthorised = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_AuthenticationStatusState(
      isAuthorised: isAuthorised == freezed
          ? _value.isAuthorised
          : isAuthorised // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStatusState implements _AuthenticationStatusState {
  _$_AuthenticationStatusState(
      {this.isAuthorised = false, this.isLoading = false});

  @override
  @JsonKey()
  final bool isAuthorised;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AuthenticationStatusState(isAuthorised: $isAuthorised, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStatusState &&
            const DeepCollectionEquality()
                .equals(other.isAuthorised, isAuthorised) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAuthorised),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationStatusStateCopyWith<_$_AuthenticationStatusState>
      get copyWith => __$$_AuthenticationStatusStateCopyWithImpl<
          _$_AuthenticationStatusState>(this, _$identity);
}

abstract class _AuthenticationStatusState implements AuthenticationStatusState {
  factory _AuthenticationStatusState(
      {final bool isAuthorised,
      final bool isLoading}) = _$_AuthenticationStatusState;

  @override
  bool get isAuthorised;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStatusStateCopyWith<_$_AuthenticationStatusState>
      get copyWith => throw _privateConstructorUsedError;
}
