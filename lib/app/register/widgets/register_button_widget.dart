import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../cubit/password/password_cubit.dart';
import '../../../data/services/auth_service.dart';
import '../../../widgets/global/global_button_widget.dart';
import '../../otp/screens/otp_screen.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});
  @override
  Widget build(BuildContext context) {
    // String errorMessage = "";
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Container(
      margin: AppPadding.lrt24(),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: GlobalButtonWidget(
        text: AppText.register,
        color: AppColors.orangeColor,
        onPressed: () {
          if (passwordCubit.formKey.currentState!.validate()) {
            AuthService.phoneNumberAuth(
              passwordCubit.registerPhoneNumberController.text,
              (verificationCompleted) {},
              (verificationFailed) {},
              (verificationFailed) {},
              (codeSent, number) {},
              (codeAutoRetrievalTimeout) {},
            );
            AuthService.register(
              passwordCubit.registerEmailController.text,
              passwordCubit.registerPasswordController.text,
            ).then(
              (value) {
                passwordCubit.saveRegisterState();
                AppNavigator.go(
                  context,
                  const OtpScreen(),
                );
              },
            );
          }
        },
      ),
    );
  }
}
