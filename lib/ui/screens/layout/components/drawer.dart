import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nike/constant/colors/app_colors.dart';

import '../../../../constant/app_constant.dart';
import '../../../../core/components/custom_driver.dart';
import '../../../../core/components/custom_list_tile.dart';
import '../../../../core/components/custom_navigation.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(AppColors.kPrimaryColor),
      ),
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Gap(15),
            Text(
              'AmrAhmed',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 20.sp,
                color: const Color(AppColors.kWhiteColor),
              ),
            ),
            const Gap(45),
            CustomListTile(
                onTap: () {},
                leadingIcon: IconlyBroken.profile,
                title: S.of(context).profile),
            CustomListTile(
                onTap: () {},
                leadingIcon: IconlyBroken.bag2,
                title: S.of(context).cart),
            CustomListTile(
                onTap: () {},
                leadingIcon: IconlyBroken.heart,
                title: S.of(context).favorite),
            CustomListTile(
                onTap: () {},
                leadingIcon: IconlyBroken.setting,
                title: S.of(context).settings),
            CustomListTile(
                onTap: () {},
                leadingIcon: IconlyBroken.profile,
                title: S.of(context).profile),
            const Gap(25),
            myDivider(AppConstant.deviceWidth(context) / 1.8, 1),
            CustomListTile(
                onTap: () {},
                leadingIcon: IconlyBroken.logout,
                title: S.of(context).signOut),
          ],
        ),
      ),
    );
  }
      }

