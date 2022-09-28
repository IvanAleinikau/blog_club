// coverage:ignore-file
part of 'styling_core.dart';

abstract class BlogStyles {
  BlogStyles._();

  static const _ISONORM = 'Isonorm';
  static const _ROBOTO = 'RobotoCondensed';

  static const isonorm16 = TextStyle(
    fontFamily: _ISONORM,
    fontSize: 16,
  );

  static const isonorm18 = TextStyle(
    fontFamily: _ISONORM,
    fontSize: 18,
  );

  static const isonorm20 = TextStyle(
    fontFamily: _ISONORM,
    fontSize: 20,
  );

  static const isonorm22 = TextStyle(
    fontFamily: _ISONORM,
    fontSize: 22,
  );

  static const isonorm26 = TextStyle(
    fontFamily: _ISONORM,
    fontSize: 26,
  );

  static const roboto16 = TextStyle(
    fontFamily: _ROBOTO,
    fontSize: 16,
  );

  static const roboto18 = TextStyle(
    fontFamily: _ROBOTO,
    fontSize: 18,
  );

  static const roboto20 = TextStyle(
    fontFamily: _ROBOTO,
    fontSize: 20,
  );

  static final roboto18ls05 = roboto18.copyWith(
    letterSpacing: 0.5,
  );

  static final isonorm26ls05w700 = isonorm26.copyWith(
    letterSpacing: 0.5,
    fontWeight: FontWeight.w700,
    fontSize: 26,
  );

  //////////////////////////////////

  static final suffixIconTextStyle = isonorm18.copyWith(
    color: BlogColors.authInputDefaultColor,
  );

  static final subtitleAuthPage = isonorm16.copyWith(
    color: const Color(0xFF9E9E9E),
  );

  static final buttonAuthPage = isonorm22.copyWith(
    color: const Color(0xFFFFFFFF),
    letterSpacing: 1,
  );

  static final resetHereButton = isonorm18.copyWith(
    color: const Color(0xFF1976D2),
  );

  static final orSingInWithTitle = isonorm18.copyWith(
    color: const Color(0xFF212121),
  );
}
