import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class ShoppingCashBackWidget extends StatelessWidget {
  const ShoppingCashBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      margin: AppPadding.lr6(),
      decoration: BoxDecoration(
        color: AppColors.darkPurpleColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: AppPadding.lrt12().copyWith(top: 16),
                child: Text(
                  "Yay Sürprizi",
                  style: AppTextStyle.summerStyle3(),
                ),
              ),
              AppSizedBox.h5,
              Padding(
                padding: AppPadding.lrt12().copyWith(top: 5),
                child: Text(
                  "Cashback  20%",
                  style: AppTextStyle.summerstyle2(),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            margin: AppPadding.lr12(),
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.dsc,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
