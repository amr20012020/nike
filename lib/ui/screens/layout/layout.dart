import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constant/colors/app_colors.dart';
import 'components/appBar.dart';
import 'components/drawer.dart';

/*class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final advancedDrawerController = AdvancedDrawerController();

    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(AppColors.kPrimaryColor),
        ),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 500),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: const CustomDrawer(),
      child: Scaffold(
    appBar: LayoutAppBar(
    color: AppColors.kScaffoldBackGroundColor,
      title: AppCubit.get(context)
          .titles[AppCubit.get(context).currentIndex],
      onTap: () {
        advancedDrawerController.showDrawer();
      },
      leading: Icon(Iconsax.textalign_left),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundColor: const Color(AppColors.kWhiteColor),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.search_favorite,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      advancedDrawerController: advancedDrawerController,
    ),
    body: AppCubit.get(context)
        .screens[AppCubit.get(context).currentIndex],
    bottomNavigationBar: BottomNavigationBar(
    items: AppCubit.get(context).items,
    currentIndex: AppCubit.get(context).currentIndex,
    onTap: (index) {},
    ),
    floatingActionButtonLocation:
    FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(
    Iconsax.bag_2,
    ),
    ),
      ),
    );
  }
}*/