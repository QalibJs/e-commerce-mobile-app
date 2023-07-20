import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../widgets/promotion_second_widget.dart';
import '../widgets/promotion_third_widget.dart';
import '../widgets/promotion_top_widget.dart';

class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.simpleGreyColor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColors.blackBlueColor,
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: const Text("Promosyonlar"),
        // title: Text(AppText.promotion),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const PromotionTopWidget(),
              AppSizedBox.h5,
              const PromotionSecondWidget(),
              AppSizedBox.h5,
              const PromotionThirdWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
