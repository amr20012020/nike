import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/on_boarding_screen_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingScreenBody(),
    );
  }
}
