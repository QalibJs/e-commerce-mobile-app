import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_text.dart';
import '../../../cubit/password/password_cubit.dart';
import '../../../widgets/global/global_input_widget.dart';

class RegisterInputs extends StatelessWidget {
  const RegisterInputs({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    TextEditingController registerPasswordController =
        context.read<PasswordCubit>().registerPasswordController;
    TextEditingController registerAgainPasswordController =
        context.read<PasswordCubit>().registerAgainPasswordController;

    return Form(
      key: passwordCubit.formKey,
      child: Column(
        children: [
          GlobalInputWidget(
            isHome: false,
            validator: (value) {
              if (value!.isEmpty) {
                return "İstifadəçi adı daxil edin";
              }
              return null;
            },
            prefixIcon: const Icon(Icons.person_outline),
            isPassword: false,
            hintText: AppText.enterUserName,
            controller: passwordCubit.registerUserNameController,
          ),
          GlobalInputWidget(

            isHome: false,
            validator: (value) {
              if (value!.isEmpty) {
                return "e-poçt daxil edin";
              }
              return null;
            },
            prefixIcon: const Icon(Icons.mail_outlined),
            isPassword: false,
            hintText: AppText.enterEmail,
            controller: passwordCubit.registerEmailController,
          ),
          GlobalInputWidget(
            isHome: false,
            validator: (value) {
              if (value!.length <= 7) {
                return "Düxgün telefon nömrəsi daxil edin";
              }
              return null;
            },
            prefixIcon: const Icon(Icons.phone_outlined),
            isPassword: false,
            hintText: AppText.enterPhoneNumber,
            controller: passwordCubit.registerPhoneNumberController,
          ),
          GlobalInputWidget(
            isHome: false,
            validator: (value) {
              if (value!.isEmpty) {
                return "parolu daxil edin";
              } else if (registerAgainPasswordController.text !=
                  registerPasswordController.text) {
                return "Parollar uyğun gəlmir";
              } else if (value.length < 8) {
                return AppText.minimumEight;
              }
              return null;
            },
            prefixIcon: const Icon(Icons.lock_outlined),
            isPassword: true,
            hintText: AppText.enterPassword,
            controller: passwordCubit.registerPasswordController,
          ),
          GlobalInputWidget(
            isHome: false,
            validator: (value) {
              if (value!.isEmpty) {
                return AppText.enterPassword;
              } else if (passwordCubit.registerAgainPasswordController.text !=
                  passwordCubit.registerPasswordController.text) {
                return AppText.passwordEquality;
              } else if (value.length < 8) {
                return AppText.minimumEight;
              }
              return null;
            },
            prefixIcon: const Icon(Icons.lock_outline),
            isPassword: true,
            hintText: AppText.enterPasswordAgain,
            controller: passwordCubit.registerAgainPasswordController,
          ),
        ],
      ),
    );
  }
}
