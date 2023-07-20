import 'package:flutter/material.dart';

import '../../../constants/app_navigator.dart';
import '../../../constants/app_sized_box.dart';
import '../../cart/screen/cart_screen.dart';
import '../../profile/screens/profile_screen.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => AppNavigator.go(
            context,
            const CartScreen(),
          ),
          child: const Icon(
            Icons.shopping_bag_outlined,
            size: 28,
          ),
        ),
        AppSizedBox.w10,
        IconButton(
          icon: const Icon(
            Icons.person_outlined,
          ),
          onPressed: () {
            AppNavigator.go(
              context,
              const ProfileScreen(),
            );
          },
        ),
        AppSizedBox.w10,
      ],
    );
  }
}
