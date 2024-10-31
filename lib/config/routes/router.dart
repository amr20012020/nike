import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike/config/routes/routes_path.dart';
import 'package:nike/ui/screens/auth/screens/login_screen/login_Screen.dart';
import 'package:nike/ui/screens/auth/screens/signup_screen/SignUpScreenBody.dart';
import 'package:nike/ui/screens/layout/layout.dart';
import 'package:nike/ui/screens/splach_screen/screens/splach_screen.dart';

import '../../ui/screens/auth/screens/otp_code_screen/otp_code_screen.dart';
import '../../ui/screens/auth/screens/signup_screen/RegisterScreen.dart';
import '../../ui/screens/splach_screen/components/on_boarding_screen_body.dart';

Route? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.splash:
      return MaterialPageRoute(builder: (_) => const SplachScreen());
    case RoutePath.onBoarding:
      return MaterialPageRoute(builder: (_) => const OnBoardingScreenBody());
    case RoutePath.login:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case RoutePath.signUp:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    case RoutePath.otpCode:
      return MaterialPageRoute(builder: (_) => const otpCodeScreen());


  }
}