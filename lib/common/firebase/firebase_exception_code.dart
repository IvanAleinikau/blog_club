import 'package:blog_club/common/constants/firebase_constants.dart';

abstract class FirebaseCreateUserCode {
  static String getMessageFromCreateUser(String code) {
    switch (code) {
      case 'email-already-in-use':
        return EMAIL_ALREADY_IN_USE;
      case 'invalid-email':
        return INVALID_EMAIL;
      case 'operation-not-allowed':
        return OPERATION_NOT_ALLOWED;
      case 'weak-password':
        return WEAK_PASSWORD;
      default:
        return SOMETHING_GONE_WRONG;
    }
  }

  static String getMessageFromSignIn(String code) {
    switch (code) {
      case 'invalid-email':
        return INVALID_EMAIL;
      case 'user-disabled':
        return USER_DISABLED;
      case 'user-not-found':
        return USER_NOT_FOUND;
      case 'wrong-password':
        return WRONG_PASSWORD;
      default:
        return SOMETHING_GONE_WRONG;
    }
  }
}
