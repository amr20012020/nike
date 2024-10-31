import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_constant.dart';
import '../../constant/colors/app_colors.dart';

class ContainerTextFormFeild extends StatelessWidget {
  ContainerTextFormFeild({
    super.key,
    required this.isPass,
    required this.controller,
    required this.hint,
    required this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixPressed,
    this.onChanged,
  });
  final bool isPass;
  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;
  IconData? suffixIcon;
  IconData? prefixIcon;
  String? Function(String?)? onChanged;

  VoidCallback? suffixPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstant.deviceWidth(context),
      height: 47.h,
      decoration: BoxDecoration(
        color: const Color(AppColors.kLoginWithGoogleColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPass,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14.sp,
            color: const Color(AppColors.kGreyColor),
          ),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: suffixIcon != null
              ? IconButton(
            onPressed: () {
              suffixPressed?.call();
            },
            icon: Icon(
              suffixIcon,
              color: const Color(AppColors.kGreyColor),
              size: 20,
            ),
          )
              : null,
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}