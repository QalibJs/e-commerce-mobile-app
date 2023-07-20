import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class ResetTopTextWidget extends StatelessWidget {
  const ResetTopTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Parolunuzu sıfırlamaq üçün e-poçt alın",
          style: AppTextStyle.descriptionStyleB(),
          textAlign: TextAlign.center,
        ),
        AppSizedBox.h15,
        AppSizedBox.h15
      ],
    );
  }
}
