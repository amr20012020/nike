import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.fontSize,
  });

  final VoidCallback onPressed;
  final String text;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: Theme.of(context).textButtonTheme.style,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: fontSize,
          color: const Color(AppColors.kPrimaryColor),
        ),
      ),
    );
  }
}