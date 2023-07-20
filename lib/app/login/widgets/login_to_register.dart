import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/password/password_cubit.dart';
import '../../register/screens/register_screen.dart';

class LoginToRegisterWidget extends StatelessWidget {
  const LoginToRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Column(
      children: [
        Padding(
          padding: AppPadding.t10().copyWith(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSizedBox.h30,
              Text(
                AppText.haveNotAccount,
                style: AppTextStyle.haveAccount(),
              ),
              AppSizedBox.w5,
              GestureDetector(
                onTap: () {
                  AppNavigator.go(context, const RegisterScreen());
                  passwordCubit.loginEmailController.clear();
                  passwordCubit.loginPasswordController.clear();
                },
                child: Text(
                  AppText.register,
                  style: AppTextStyle.loginText(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
