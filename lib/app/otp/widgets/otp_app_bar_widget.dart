import 'package:flutter/material.dart';

import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class OtpAppBarWidget extends StatelessWidget {
  const OtpAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppText.otpAppBar,
          style: AppTextStyle.costStyle(),
        )
      ],
    );
  }
}
