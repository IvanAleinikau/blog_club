// coverage:ignore-file
part of 'styling_core.dart';

abstract class BlogDimensions {
  BlogDimensions._();

  // Standard universal dimensions
  static const double zero = 0;
  static const double divider = 1;
  static const double normalQ = 3;
  static const double normalH = 6;
  static const double normal = 12;
  static const double normalM = 18;
  static const double normal2 = 24;
  static const double normal3 = 36;
  static const double normal4 = 48;

  //default padding
  static const double smallPadding = 5;
  static const double defaultPadding = 10;
  static const double bigPadding = 20;

  //default border radius
  static const double smallBorderRadius = 5;
  static const double defaultBorderRadius = 10;

  //splash page logo
  static const double splashPageLogoHeight = 80;
  static const double splashPageLogoWeight = 150;

  //auth page
  static const double authPageLogoHeight = 56;
  static const double authPageLogoWeight = 110;
  static const double borderRadiusAuthPart = 30;
  static const double topPaddingAuthPart = 70;
  static const double contentPaddingAuthPart = 30;

  //auth input
  static const double suffixIconHeight = 50;

  static const double blogClubButtonHeight = 50;
  static const double socialMediaIconSize = 36;
}
