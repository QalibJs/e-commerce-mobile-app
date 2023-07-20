import 'package:final_project/app/profile/screens/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../cubit/password/password_cubit.dart';
import '../../../data/services/auth_service.dart';
import '../../../widgets/global/global_button_widget.dart';
import '../../../widgets/global/global_snacbar_widget.dart';
import '../../home/screens/home_screen.dart';

class LoginButtonWidgets extends StatelessWidget {
  const LoginButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Container(
      margin: AppPadding.lrt24().copyWith(top: 20),
      width: MediaQuery.of(context).size.width,
      height: 57,
      child: GlobalButtonWidget(
        color: AppColors.orangeColor,
        text: AppText.login,
        onPressed: () {
          if (passwordCubit.formKeyLogin.currentState!.validate()) {
            AuthService.login(
              passwordCubit.loginEmailController.text,
              passwordCubit.loginPasswordController.text,
              context,
            ).then(
              (v) {
                passwordCubit.saveRegisterState();
                AppNavigator.go(
                  context,
                  const HomeScreen(),
                );
              },
            );
            passwordCubit.loginEmailController.clear();
            passwordCubit.loginPasswordController.clear();
          }
        },
      ),
    );
  }

 signIn(String email, String password, BuildContext context) async {
    try {
      await AuthService.login(email, password, context);
      // ignore: use_build_context_synchronously
      AppNavigator.go(context, const HomeScreen());
    } on FirebaseAuthException catch (a) {
      print("error.message");
      print(a.message);
    }
  }
}
