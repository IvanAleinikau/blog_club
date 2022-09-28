// coverage:ignore-file
part of 'styling_core.dart';

abstract class BlogColors {
  BlogColors._();

  static const _white = Color(0xFFFFFFFF);
  static const _red = Color(0xFFF44336);
  static const _primary700 = Color(0xFF1976D2);

  //splash page
  static const splashScreenBackgroundColor = _white;

  //auth page
  static const authActiveTab = _white;
  static const authInactiveTab = Color(0xFF9E9E9E);
  static const firstBackgroundColorAuthPage = _white;
  static const secondBackgroundColorAuthPage = _primary700;

  //auth input
  static const authInputDefaultColor = _primary700;
  static const authInputErrorBorderColor = _red;
}
