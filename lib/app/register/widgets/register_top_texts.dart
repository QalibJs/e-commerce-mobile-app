import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class RegisterTopTextWidgets extends StatelessWidget {
  const RegisterTopTextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppText.registerAccount,
          style: AppTextStyle.bigText(),
        ),
        AppSizedBox.h10,
        Text(
          AppText.completeYourDetail,
          style: AppTextStyle.registerAndLoginDescription(),
        ),
        AppSizedBox.h70,
      ],
    );
  }
}
