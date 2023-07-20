 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_text.dart';
import '../../../cubit/password/password_cubit.dart';
import '../../../widgets/global/global_input_widget.dart';

class LoginInputsWidget extends StatelessWidget {
  const LoginInputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Form(
      key: passwordCubit.formKey,
      child: Column(
        children: [
          GlobalInputWidget(
            isHome: false,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter email";
              }
              return null;
            },
            hintText: AppText.enterEmail,
            isPassword: false,
            controller: passwordCubit.loginEmailController,
            prefixIcon: const Icon(Icons.email_outlined),
          ),
          GlobalInputWidget(
            isHome: false,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter password";
              } else if (value.length < 8) {
                return "length should be more than 8";
              }
              return null;
            },
            hintText: AppText.enterPassword,
            isPassword: true,
            controller: passwordCubit.loginPasswordController,
            prefixIcon: const Icon(Icons.lock_outline),
          ),
        ],
      ),
    );
  }
}
