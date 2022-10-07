// coverage:ignore-file
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_status_state.freezed.dart';

@freezed
class AuthenticationStatusState with _$AuthenticationStatusState {
  factory AuthenticationStatusState({
    @Default(false) bool isAuthorised,
  }) = _AuthenticationStatusState;
}
