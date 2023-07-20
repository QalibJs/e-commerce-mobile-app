import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class PromotionUserNameWidget extends StatelessWidget {
  final String username;
  final String usercity;
  const PromotionUserNameWidget(
      {super.key, required this.username, required this.usercity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSizedBox.h15,
        Text(
          username,
          style: AppTextStyle.promotionUserName(),
        ),
        AppSizedBox.h5,
        Text(
          usercity,
          style: AppTextStyle.promotionUserName(),
        )
      ],
    );
  }
}
