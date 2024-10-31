import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nike/constant/app_constant.dart';
import 'package:nike/constant/colors/app_colors.dart';

import '../../../../../config/routes/routes_path.dart';
import '../../../../../core/components/build_text_next.dart';
import '../../../../../core/components/build_two_text_from_field.dart';
import '../../../../../core/components/custom_button.dart';
import '../../../../../core/components/custom_navigation.dart';
import '../../../../../core/components/full_name.dart';
import '../../../../../core/components/sign_with_google.dart';
import '../../../../../generated/l10n.dart';

class RegisterScreenBody extends StatelessWidget {
  RegisterScreenBody({super.key});

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: AppConstant.deviceHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).signUp,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    S.of(context).registerScreenDescription,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16.sp,
                          color: Colors.grey,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(30),
                  TitleAndTextFormFeild(
                    nameController: nameController,
                    title: S.of(context).registerFullName,
                    hint: 'xxxxxxxxx',
                  ),
                  const Gap(20),
                  TitleAndTextFormFeild(
                    nameController: phoneController,
                    title: 'Phone Number',
                    hint: '+20100000000',
                  ),
                  CustomTwoTextFromField(
                    controller1: emailController,
                    controller2: passController,
                    hint1: S.of(context).loginScreenEmail,
                    hint2: S.of(context).loginScreenPass,
                  ),
                  const Gap(30),
                  CustomButton(
                    onPressed: () {},
                    text: S.of(context).signUp,
                    height: 35.h,
                    color: AppColors.kPrimaryColor,
                    width: AppConstant.deviceWidth(context),
                    horizontal: 0,
                    vertical: 0,
                    radius: 10,
                    textColor: AppColors.kWhiteColor,
                    fontSize: 18.sp,
                  ),
                  const Gap(20),
                  const SignWithGoogle(
                    text: "Sign Up With Google",
                  ),
                  const Gap(10),
                  customTextNextToTextButton(
                    context: context,
                    textButton: S.of(context).registerScreenHaveAccount,
                    text: S.of(context).loginScreenButton,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
