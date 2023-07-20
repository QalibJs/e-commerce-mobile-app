import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/home/home_cubit.dart';
import '../../cart/screen/cart_screen.dart';
import '../../favourite/screen/favourite_screen.dart';
import '../../profile/screens/profile_screen.dart';
import '../../shopping/screen/shopping_screen.dart';
import '../widgets/home_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = context.read<HomeCubit>();
    return SafeArea(
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: homeCubit.pageController,
          children: const [
            ShoppingScreen(),
            CartScreen(),
            FavouriteScreen(),
            ProfileScreen()
          ],
        ),
        bottomNavigationBar: GlobalBottomNavBar(
          onTabChange: (index) {
            homeCubit.pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}
