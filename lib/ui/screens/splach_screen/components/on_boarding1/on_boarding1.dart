import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nike/constant/app_constant.dart';
import 'package:nike/ui/screens/splach_screen/components/on_boarding1/title_builder.dart';

import '../../../../../generated/assets.dart';
import '../on_boarding_item_content/on_boarding_item_content.dart';
import 'on_boarding1_body.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key, required this.onBoardingItemContent});
  final OnBoardingItemContent onBoardingItemContent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        const Gap(10),
        TitleBuilder(onBoardingItemContent: onBoardingItemContent,),
        const Gap(10),
        Image.asset(
          Assets.onBoarding1Vector2,
          width: AppConstant.deviceWidth(context),
        ),
        const BodyOnBoarding1(),
      ],
    );
  }
}
