import 'dart:async';

import 'package:blog_club/common/widget/core/splash_area.dart';
import 'package:blog_club/presentation/styling/styling_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthInput extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;

  const AuthInput({
    Key? key,
    this.controller,
    this.isPassword = false,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.validator,
    this.inputFormatters,
    this.onChanged,
  }) : super(key: key);

  @override
  State<AuthInput> createState() => _AuthInputState();
}

class _AuthInputState extends State<AuthInput> {
  final ValueNotifier<bool> _isObscure = ValueNotifier<bool>(false);
  late Timer _timer;

  @override
  void initState() {
    _isObscure.value = widget.isPassword;
    _timer = Timer(const Duration(), () {});
    super.initState();
  }

  void _startTimer() {
    if (_timer.isActive) _timer.cancel();
    _timer = Timer(const Duration(seconds: 2), () {
      _isObscure.value = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isObscure,
      builder: (_, bool isObscure, __) {
        return TextFormField(
          onChanged: widget.onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: widget.inputFormatters,
          focusNode: widget.focusNode,
          cursorColor: BlogColors.authInputDefaultColor,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: _isObscure.value,
          textInputAction: widget.textInputAction,
          validator: widget.validator,
          decoration: InputDecoration(
            suffixIconConstraints: const BoxConstraints(
              maxHeight: BlogDimensions.suffixIconHeight,
            ),
            suffixIcon: widget.isPassword
                ? SplashArea(
                    borderRadius: BorderRadius.circular(
                      BlogDimensions.smallBorderRadius,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        BlogDimensions.smallPadding,
                      ),
                      child: Text(
                        'Show',
                        style: BlogStyles.suffixIconTextStyle,
                      ),
                    ),
                    onTap: () {
                      _isObscure.value = false;
                      _startTimer();
                    },
                  )
                : null,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: BlogColors.authInputDefaultColor,
              ),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: BlogColors.authInputErrorBorderColor,
              ),
            ),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: BlogColors.authInputErrorBorderColor,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
