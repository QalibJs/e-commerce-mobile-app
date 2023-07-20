import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';

class GlobalBottomNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const GlobalBottomNavBar({
    Key? key,
    this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12().copyWith(bottom: 12),
      child: GNav(
        tabBackgroundColor: AppColors.simpleGreyColor,
        padding: AppPadding.lr12(),
        onTabChange: onTabChange,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            iconSize: 35,
            text: AppText.home,
            iconColor: AppColors.blackColor,
            iconActiveColor: AppColors.orangeColor,
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            iconSize: 35,
            iconColor: AppColors.blackColor,
            text: AppText.bag,
            iconActiveColor: AppColors.orangeColor,
          ),
          GButton(
            icon: Icons.favorite_border,
            iconSize: 35,
            text: AppText.fav,
            iconColor: AppColors.blackColor,
            iconActiveColor: AppColors.orangeColor,
          ),
          GButton(
            icon: Icons.person_outline,
            iconSize: 35,
            text: AppText.profile,
            iconColor: AppColors.blackColor,
            iconActiveColor: AppColors.orangeColor,
          ),
        ],
      ),
    );
  }
}
