import 'package:blog_club/common/extensions/string_extensions.dart';
import 'package:blog_club/common/utils/regexp_helper.dart';

class ValidationService {
  ValidationService._();

  static String? validateInput(String? value) {
    if (value.isNullOrEmpty) {
      return 'Field must not be empty';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value.isNullOrEmpty) {
      return 'Field must not be empty';
    } else if (!RegExpHelper.emailValidation.hasMatch(value!)) {
      return 'Please check if email format is correct';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value != null && value.length < 8) {
      return 'Password needs to include at least 8 characters';
    }
    return null;
  }
}
