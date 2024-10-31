import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nike/core/components/build_rich_text.dart';
import 'package:nike/core/components/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../config/routes/routes_path.dart';
import '../../../../../constant/app_constant.dart';
import '../../../../../constant/colors/app_colors.dart';
import '../../../../../core/components/custom_navigation.dart';
import '../../../../../generated/l10n.dart';
import '../../../layout/layout.dart';

class otpCodeScreen extends StatelessWidget {
  const otpCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRichText(
              textPartOne: '+02 01030228527',
              textPartTwo: '',
            ),
            Text(
              "We have sent code to amrahmed200180@gmail.com",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 16.sp,
                    color: const Color(AppColors.kGreyColor),
                  ),
            ),
           const Gap(10),

            PinCodeTextField(
              obscureText: false,
              pinTheme: PinTheme(
                borderRadius: BorderRadius.circular(10),
                shape: PinCodeFieldShape.box,
                inactiveColor: const Color(AppColors.kGreyColor),
              ),
              appContext: context,
              length: 6,
              animationType: AnimationType.fade,
              animationDuration: const Duration(milliseconds: 300),
              onChanged: (value){},
              cursorColor: const Color(AppColors.kLoginWithGoogleColor),
              keyboardType: TextInputType.number,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onCompleted: (value){
                print(value);
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              ),

            const Gap(25),

        CustomButton(
          onPressed: () {
            CustomNavigation.navigateByNamedTo(context, RoutePath.layout);
          },
          text: S.of(context).submit,
          height: 37.h,
          color: AppColors.kPrimaryColor,
          width: AppConstant.deviceWidth(context),
          horizontal: 10,
          vertical: 0,
          radius: 10,
          textColor: AppColors.kWhiteColor,
          fontSize: 20,
        ),
          ],
        ),
      ),
    );
  }
}
