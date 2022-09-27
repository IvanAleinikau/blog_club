import 'package:flutter/material.dart';

const Key SPLASH_AREA_MATERIAL_KEY = Key('SPLASH_AREA_MATERIAL_KEY');

class SplashArea extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;
  final bool isCircleBorder;

  const SplashArea({
    Key? key,
    required this.child,
    required this.onTap,
    this.borderRadius,
  })  : isCircleBorder = false,
        super(key: key);

  const SplashArea.circle({
    Key? key,
    required this.child,
    required this.onTap,
    this.borderRadius,
  })  : isCircleBorder = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      key: SPLASH_AREA_MATERIAL_KEY,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        customBorder: isCircleBorder ? const CircleBorder() : null,
        child: child,
      ),
    );
  }
}
