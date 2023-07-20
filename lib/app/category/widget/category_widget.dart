import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../cubit/bar_cubit.dart/bar_cubit.dart';
import '../../../cubit/image/image_picker_cubit.dart';
import '../../men/screens/men_screen.dart';
import '../../women/screens/women_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BarCubit barCubit = context.read<BarCubit>();
    ImagePickerProvider imageProvider = context.watch<ImagePickerProvider>();
    return SidebarX(
      controller: barCubit.controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.blackBlueColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: AppColors.blackBlueColor,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 35),
        selectedItemTextPadding: const EdgeInsets.only(left: 32),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.amber),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.amber.withOpacity(0.37),
          ),
          gradient: LinearGradient(
            colors: [
              AppColors.amber,
              AppColors.appBarColor,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 250,
        decoration: BoxDecoration(
          color: AppColors.blackBlueColor,
        ),
      ),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 188,
          child: Padding(
            padding: AppPadding.t10(),
            child: extended
                ? imageProvider.image != null
                    ? Column(
                        children: [
                          ClipOval(
                            child: Image.file(
                              imageProvider.image!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          AppSizedBox.h10,
                          Text(
                            FirebaseAuth.instance.currentUser!.email == null
                                ? "eqalan.63@gmail.com"
                                : "${FirebaseAuth.instance.currentUser!.email}",
                            style: AppTextStyle.whiteTextt2(),
                          ),
                          AppSizedBox.h10,
                          Container(
                            margin: AppPadding.lr6(),
                            height: 0.8,
                            width: MediaQuery.of(context).size.width,
                            color: AppColors.whiteColor,
                          )
                        ],
                      )
                    : Column( 
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              border: Border.all(
                                width: 1.5,
                                color: AppColors.simpleBlueColor,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.person,
                              color: AppColors.whiteColor,
                              size: 45,
                            ),
                          ),
                          AppSizedBox.h10,
                          Text(
                            "${FirebaseAuth.instance.currentUser!.email}",
                            style: AppTextStyle.whiteTextt2(),
                          ),
                          AppSizedBox.h10,
                          Container(
                            height: 0.2,
                            width: MediaQuery.of(context).size.width,
                            color: AppColors.whiteColor,
                          )
                        ],
                      )
                : Container(
                    color: AppColors.darkBlueColor,
                    width: 10,
                    height: 10,
                  ),
          ),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: "Hamısı",
          onTap: () {},
        ),
        SidebarXItem(
            icon: Icons.man,
            label: 'Kişi moda',
            onTap: () {
              AppNavigator.go(
                  context,
                  const MenScreen(
                    isHome: false,
                  ));
            }),
        const SidebarXItem(
          icon: Icons.people,
          label: 'İdman',
        ),
        SidebarXItem(
            icon: Icons.woman,
            label: 'Qadın moda',
            onTap: () {
              AppNavigator.go(context, const WomenScreen(isHome: false));
            }),
        const SidebarXItem(
          icon: Icons.favorite,
          label: 'Uşaqlar',
        ),
      ],
    );
  }
}
