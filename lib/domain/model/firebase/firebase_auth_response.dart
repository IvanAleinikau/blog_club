// coverage:ignore-file
import 'package:blog_club/common/constants/app_constants.dart';
import 'package:blog_club/common/enums/firebase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_auth_response.freezed.dart';

@freezed
class FirebaseAuthResponse with _$FirebaseAuthResponse {
  factory FirebaseAuthResponse({
    @Default(FirebaseResponseType.base) FirebaseResponseType type,
    @Default(EMPTY_STRING) String message,
  }) = _FirebaseAuthResponse;
}
