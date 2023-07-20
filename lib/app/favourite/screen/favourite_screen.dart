import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../widgets/favourite_list_view_widget.dart';
import '../widgets/favourite_top_text_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          AppSizedBox.h10,
          const FavouriteTopTextWidget(),
          AppSizedBox.h5,
          const FavouriteListViewWidget()
        ],
      ),
    );
  }
}
