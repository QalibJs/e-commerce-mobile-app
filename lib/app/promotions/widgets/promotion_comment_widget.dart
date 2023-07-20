import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';

class PromotionCommentWidget extends StatelessWidget {
  final String text;
  const PromotionCommentWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: AppPadding.lr6(),
        height: 60,
        child: Text(
          text,
          style: AppTextStyle.simpleText(),
        ),
      ),
    );
  }
}
