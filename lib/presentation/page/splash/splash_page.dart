import 'package:auto_route/auto_route.dart';
import 'package:blog_club/di/getters.dart';
import 'package:blog_club/presentation/bloc/splash/splash_cubit.dart';
import 'package:blog_club/presentation/bloc/splash/splash_state.dart';
import 'package:blog_club/presentation/route/router.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late SplashCubit _cubit;

  @override
  void initState() {
    _cubit = splashCubit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      bloc: _cubit,
      listener: _listener,
      child: Container(
        color: BlogColors.splashScreenBackgroundColor,
        child: CustomPaint(
          painter: _SplashPainter(),
          child: Center(
            child: Image.asset(
              BlogImage.appLogo,
              height: BlogDimensions.splashPageLogoHeight,
              width: BlogDimensions.splashPageLogoWeight,
            ),
          ),
        ),
      ),
    );
  }

  void _listener(BuildContext context, SplashState state) {
    if (state.isLoaded) {
      context.router.push(const AuthDeclarativeRoute());
    }
  }
}

class _SplashPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint firstBackgroundColor = Paint()
      ..color = const Color(0xFFF4F7FF)
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    final Paint secondBackgroundColor = Paint()
      ..color = const Color(0xFFF4F7FF).withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    final Path firstPath = Path()
      ..moveTo(size.width * 0.20, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height * 0.15)
      ..lineTo(size.width * 0.20, 0)
      ..close();

    canvas.drawPath(firstPath, firstBackgroundColor);

    final Path secondPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.20, 0)
      ..lineTo(size.width, size.height * 0.15)
      ..lineTo(size.width, size.height * 0.60)
      ..lineTo(0, size.height * 0.40)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(secondPath, secondBackgroundColor);

    final Path thirdPath = Path()
      ..moveTo(0, size.height * 0.40)
      ..lineTo(size.width, size.height * 0.60)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * 0.80, size.height)
      ..lineTo(0, size.height * 0.85)
      ..close();

    canvas.drawPath(thirdPath, firstBackgroundColor);

    final Path fourthPath = Path()
      ..moveTo(0, size.height * 0.85)
      ..lineTo(size.width * 0.80, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(fourthPath, secondBackgroundColor);

    final Paint logoBackground = Paint()
      ..color = const Color(0xFFBBC6D7).withOpacity(0.15)
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    final Path logoBackgroundPath = Path()
      ..moveTo(size.width, size.height * 0.50)
      ..lineTo(size.width, size.height * 0.70)
      ..lineTo(size.width * 0.35, size.height * 0.56)
      ..arcToPoint(
        Offset(size.width / 2, size.height * 0.40),
        clockwise: true,
        radius: const Radius.circular(50),
      )
      ..close();

    canvas.drawPath(logoBackgroundPath, logoBackground);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => oldDelegate != this;
}
