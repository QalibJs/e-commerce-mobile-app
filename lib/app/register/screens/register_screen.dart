import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import '../widgets/register_button_widget.dart';
import '../widgets/register_inputs.dart';
import '../widgets/register_to_login.dart';
import '../widgets/register_top_texts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizedBox.h70,
            const RegisterTopTextWidgets(),
            const RegisterInputs(),
            const RegisterButtonWidget(),
            AppSizedBox.h20,
            const RegisterToLogin(),
          ],
        ),
      ),
    );
  }
}
