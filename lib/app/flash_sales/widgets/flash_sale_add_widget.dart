import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class FlashSalesAddWidget extends StatelessWidget {
  const FlashSalesAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      margin: AppPadding.lrt24(),
      decoration: BoxDecoration(
        color: AppColors.sale,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: AppPadding.lrt18().copyWith(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.flashSale,
                  style: AppTextStyle.descriptionStyleB(),
                ),
                AppSizedBox.h10,
                Text(
                  "sale up to 60% off",
                  style: AppTextStyle.saleUp(),
                ),
                AppSizedBox.h15,
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: AppPadding.lr6().copyWith(top: 6, bottom: 6),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          size: 18,
                        ),
                        AppSizedBox.w5,
                        const Text("25-30 June")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: AppPadding.lrt18().copyWith(top: 0),
            width: 110,
            height: 110,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.erksw2),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
