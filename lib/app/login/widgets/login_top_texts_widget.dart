import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class LoginTopTextsWidget extends StatelessWidget {
  const LoginTopTextsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppPadding.lrt24().copyWith(top: 0),
          child: Row(
            children: [
              Text(
                AppText.signIn,
                style: AppTextStyle.bigText(),
              ),
              AppSizedBox.w15,
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.login),
                  ),
                ),
              )
            ],
          ),
        ),
        AppSizedBox.h10,
        Padding(
          padding: AppPadding.lrt24().copyWith(top: 0),
          child: Row(
            children: [
              Text(
                AppText.signInDescription,
                style: AppTextStyle.registerAndLoginDescription(),
              ),
            ],
          ),
        ),
        AppSizedBox.h70
      ],
    );
  }
}
