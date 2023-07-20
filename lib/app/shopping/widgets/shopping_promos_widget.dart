import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../promotions/widgets/promotion_second_list_view_widget.dart';

class ShoppingPromosWidget extends StatelessWidget {
  const ShoppingPromosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 202,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizedBox.h10,
            Padding(
              padding: AppPadding.lr12().copyWith(right: 0),
              child: Text(
                "Promosyonlar necə işləyir?",
                style: AppTextStyle.descriptionStyleB(),
              ),
            ),
            AppSizedBox.h10,
            Padding(
              padding: AppPadding.lr12().copyWith(right: 0),
              child: Text(
                "Discount visibility on Zomato gets you more clicks",
                style: AppTextStyle.promotionSubtitle(),
              ),
            ),
            AppSizedBox.h20,
            const PromotionSecondListViewWidget(),
            AppSizedBox.h5,
            AppSizedBox.h5,
          ],
        ),
      ),
    );
  }
}
