import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nike/core/components/container_with_text_from_field.dart';
import 'package:iconsax/iconsax.dart';
import '../../generated/l10n.dart';

class CustomTwoTextFromField extends StatefulWidget {
  const CustomTwoTextFromField({
    super.key,
    required this.controller1,
    required this.controller2,
    required this.hint1,
    required this.hint2,
  });


  final TextEditingController controller1;
  final TextEditingController controller2;
  final String hint1;
  final String hint2;

  @override
  State<CustomTwoTextFromField> createState() => _CustomTwoTextFromFieldState();
}

class _CustomTwoTextFromFieldState extends State<CustomTwoTextFromField> {
   bool isPass = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).email,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15.sp),
        ),
        const Gap(10),

        ContainerTextFormFeild(
          prefixIcon: Icons.email_outlined,
          isPass: false,
          controller: widget.controller1,
          hint: widget.hint1,
          keyboardType: TextInputType.emailAddress,
        ),

        const Gap(20),
        Text(
          S.of(context).password,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15.sp),
        ),
        const Gap(10),
        ContainerTextFormFeild(
          prefixIcon: Iconsax.password_check,
          isPass: isPass,
          controller: widget.controller2,
          hint: widget.hint2,
          keyboardType: TextInputType.visiblePassword,
          suffixIcon: isPass ? Iconsax.eye : Iconsax.eye_slash,
          suffixPressed: (){
            setState(() {
              isPass = !isPass;
            });
          },
        ),



      ],
    );
  }
}
