import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class CartTotalWidget extends StatelessWidget {
  const CartTotalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColors.appBarColor,
            width: 3
          ),
        ),
        child: Padding(
          padding: AppPadding.lr6(),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppText.total,
                  style: AppTextStyle.costStyle(),
                ),
                const Spacer(),
                Text(
                  "\$35",
                  style: AppTextStyle.costStyle(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
