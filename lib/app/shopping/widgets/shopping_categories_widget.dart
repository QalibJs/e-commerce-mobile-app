import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class ShoppingCategoriesWidget extends StatelessWidget {
  const ShoppingCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppSizedBox.w15,
        Text(
          AppText.topCategories,
          style: AppTextStyle.costStyle(),
        ),
        const Spacer(),
        Padding(
          padding: AppPadding.lr12().copyWith(left: 0),
          child: Text(
            AppText.seeAll,
            style: AppTextStyle.simpleText(),
          ),
        ),
      ],
    );
  }
}
