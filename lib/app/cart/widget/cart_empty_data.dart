import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class CartEmptyData extends StatelessWidget {
  const CartEmptyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppSizedBox.h240,
          Container(
            width: 140,
            height: 140,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.emptyCard,
                ),
              ),
            ),
          ),
          AppSizedBox.h15,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            margin: AppPadding.lrt24().copyWith(top: 10),
            child: Column(
              children: [
                Text(
                  "Hələki heç bir mehsul yoxdur",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.descriptionStyleB(),
                ),
                AppSizedBox.h10,
                Text(
                  "Məhsullarımızla tanış olmaq üçün ana səhifəyə baxıb kateqoriyalara uyğun məhsulları izləyə bilərsiniz.",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.costStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
