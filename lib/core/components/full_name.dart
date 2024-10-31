import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'container_with_text_from_field.dart';

class TitleAndTextFormFeild extends StatelessWidget {
  const TitleAndTextFormFeild({
    super.key,
    required this.nameController,
    required this.title,
    required this.hint,
  });

  final TextEditingController nameController;
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
          Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15.sp),
        ),
         const Gap(10),
        ContainerTextFormFeild(
          isPass: false,
          controller: nameController,
          hint: hint,
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}