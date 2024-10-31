import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nike/config/routes/routes_path.dart';
import 'package:nike/constant/app_constant.dart';
import 'package:nike/constant/colors/app_colors.dart';
import 'package:nike/core/components/build_text_next.dart';
import 'package:nike/core/components/custom_button.dart';
import 'package:nike/core/components/custom_navigation.dart';
import 'package:nike/core/components/sign_with_google.dart';

import '../../../../../core/components/build_two_text_from_field.dart';
import '../../../../../generated/l10n.dart';
import '../../screens/otp_code_screen/otp_code_screen.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: AppConstant.deviceHeight(context),
          child: Column(
            children:
            [
              Text(
                S.of(context).loginScreenTitlePartOne,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                S.of(context).loginDesc,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.grey,
                  fontSize: 15.sp,
                ),
                textAlign: TextAlign.center,
              ),

              const Gap(30),

              CustomTwoTextFromField(
                controller1: emailController,
                controller2: passController,
                hint1: S.of(context).loginScreenEmail,
                hint2: S.of(context).loginScreenPass,
              ),

              const Gap(15),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  S.of(context).loginScreenForgetPass,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: const Color(AppColors.kGreyColor),
                    fontSize: 14.sp,
                  ),
                ),
              ),

              const Gap(20),

              CustomButton(
                onPressed: () {
                  CustomNavigation.navigateByNamedTo(context, RoutePath.otpCode);
                },
                text: S.of(context).loginScreenButton,
                height: 35.h,
                color: AppColors.kPrimaryColor,
                width: AppConstant.deviceWidth(context),
                horizontal: 0,
                vertical: 0,
                radius: 10,
                textColor: AppColors.kWhiteColor,
                fontSize: 18.sp,
              ),


              const Gap(25),

              SignWithGoogle(text: S.of(context).signInWithGoogle,),
              const Gap(20),
              customTextNextToTextButton(
                  context: context,
                  textButton: S.of(context).loginScreenCreateAccount,
                  text: S.of(context).loginScreenHaveNotAccount,
                  onPressed: (){
                    CustomNavigation.navigateByNamedTo(context, RoutePath.signUp);
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
