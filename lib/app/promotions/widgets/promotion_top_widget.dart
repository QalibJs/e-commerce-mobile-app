import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import 'promotion_top_list_view_widget.dart';

class PromotionTopWidget extends StatelessWidget {
  const PromotionTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPadding.lrt12().copyWith(right: 0),
              child: Text(
                AppText.popularity,
                style: AppTextStyle.bigText(),
              ),
            ),
            Padding(
              padding: AppPadding.lrt12().copyWith(right: 0),
              child: Text(
                AppText.promotionDescription, 
                style: AppTextStyle.descriptionStyleS(),
              ),
            ),
            AppSizedBox.h50,
            const PromotionTopListViewWidget(),
            AppSizedBox.h50,

          ],
        ),
      ),
    );
  }
}
