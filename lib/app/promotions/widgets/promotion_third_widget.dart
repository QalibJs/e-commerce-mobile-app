import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import 'promotion_third_list_view_widget.dart';

class PromotionThirdWidget extends StatelessWidget {
  const PromotionThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: AppColors.whiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizedBox.h10,
            Padding(
              padding: AppPadding.lr12().copyWith(
                right: 0,
              ),
              child: Text(
                "Məmnun tərəfdaşlarımız",
                style: AppTextStyle.descriptionStyleB(),
              ),
            ),
            AppSizedBox.h1,
            AppSizedBox.h1,
            AppSizedBox.h1,
            Padding(
              padding: AppPadding.lr12().copyWith(
                right: 0,
              ),
              child: Text(
                "Tətbiq promosyonlarından istifadə edən tacirlər",
                style: AppTextStyle.simpleText(),
              ),
            ),
            AppSizedBox.h15,
            const PromotionThirListViewWidget(),
            AppSizedBox.h15,
          ],
        ),
      ),
    );
  }
}
