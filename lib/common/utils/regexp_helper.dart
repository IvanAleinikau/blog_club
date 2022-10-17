class RegExpHelper {
  RegExpHelper._();

  static final RegExp containsNumber = RegExp(r'[0-9]');
  static final RegExp containsLowercase = RegExp(r'[a-z]');
  static final RegExp containsUppercase = RegExp(r'[A-Z]');

  static final RegExp phone = RegExp(r'[\d]');
  static final RegExp emailValidation = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
}
