import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_text.dart';
import '../../../cubit/password/password_cubit.dart';
import 'personal_information_list_tile_widget.dart';

class PersonalInformationsFullWidget extends StatelessWidget {
  const PersonalInformationsFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Column(
      children: [
        PersonalInformationsWidget(
          title: AppText.username,
          subtitle: passwordCubit.registerUserNameController.text.trim(),
        ),
        PersonalInformationsWidget(
          title: AppText.email,
          subtitle: "${FirebaseAuth.instance.currentUser!.email}",
        ),
        PersonalInformationsWidget(
          title: AppText.phoneNumber,
          subtitle: passwordCubit.registerPhoneNumberController.text.trim(),
        ),
        PersonalInformationsWidget(
          title: AppText.password,
          subtitle: passwordCubit.registerPasswordController.text.trim(),
        ),
      ],
    );
  }
}
