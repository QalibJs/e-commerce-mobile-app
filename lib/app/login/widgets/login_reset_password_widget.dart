import 'package:flutter/material.dart';

import '../../../constants/app_navigator.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../reset/screens/reset_screen.dart';

class LoginResetPasswordWidget extends StatelessWidget {
  const LoginResetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizedBox.h5,
        GestureDetector(
          onTap: () {
            AppNavigator.go(
              context,
              const ResetScreen(),
            );
          },
          child: Text(
            AppText.forgotPassword,
            style: AppTextStyle.loginText(),
          ),
        ),
      ],
    );
  }
}
