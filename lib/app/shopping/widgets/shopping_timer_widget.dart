import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class ShoppingTimerWidget extends StatelessWidget {
  const ShoppingTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 24.0, end: 0.0),
      duration: const Duration(days: 1),
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.blackGreyColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: AppPadding.lr12().copyWith(top: 4, bottom: 4),
            child: Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: AppColors.amber,
                ),
                AppSizedBox.w5,
                Text(
                  "${value.toInt()} hours",
                  style: AppTextStyle.timeStyle(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
