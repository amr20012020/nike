import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/colors/app_colors.dart';
import '../../constant/current_local.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.textPartOne,
    required this.textPartTwo,
  });
  final String textPartOne;
  final String textPartTwo;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: textPartOne,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: isArabic() ? 30 : 35,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
              text: textPartTwo,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: isArabic() ? 30 : 35,
                fontWeight: FontWeight.bold,
                color: const Color(AppColors.kPrimaryColor),
              ),
            )
          ]),
    );
  }
}