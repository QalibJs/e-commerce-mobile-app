import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../widgets/login_button_widgets.dart';
import '../widgets/login_inputs.dart';
import '../widgets/login_reset_password_widget.dart';
import '../widgets/login_to_register.dart';
import '../widgets/login_top_texts_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LoginTopTextsWidget(),
            const LoginInputsWidget(),
            Padding(
              padding: AppPadding.lrt24().copyWith(left: 0, top: 1, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  LoginResetPasswordWidget(),
                ],
              ),
            ),
            const LoginButtonWidgets(),
            const LoginToRegisterWidget(),
          ],
        ),
      ),
    );
  }
}
