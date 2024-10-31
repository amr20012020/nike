import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constant/colors/app_colors.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({
    super.key,
    required this.pageController,
    required this.count,
  });
  final PageController pageController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: const ExpandingDotsEffect(
        dotColor: Color(AppColors.kWhiteColor),
        activeDotColor: Color(AppColors.kGoldColor),
        dotHeight: 10,
        dotWidth: 10,
        expansionFactor: 4.0,
        spacing: 5,
      ),
    );
  }
}