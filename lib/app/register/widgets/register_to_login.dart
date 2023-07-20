import 'package:flutter/material.dart';

import '../../../constants/app_navigator.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../hive/hive_service.dart';
import '../../login/screen/login_screen.dart';

class RegisterToLogin extends StatelessWidget {
  const RegisterToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppText.haveAccount,
          style: AppTextStyle.haveAccount(),
        ),
        AppSizedBox.w5,
        GestureDetector(
          onTap: ()  async {
            // (await HiveService.instance).deleteData('onboard');
             AppNavigator.go(
              context,
              const LoginScreen(),
            );
          },
          child: Text(
            AppText.login,
            style: AppTextStyle.loginText(),
          ),
        ),
      ],
    );
  }
}
