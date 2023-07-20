import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../data/services/auth_service.dart';
import '../../../provider/reset_provider.dart';
import '../../../widgets/global/global_snacbar_widget.dart';
import '../../login/screen/login_screen.dart';

class ResetButtonWidget extends StatelessWidget {
  const ResetButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ResetProvider resetProvider = context.read<ResetProvider>();
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: AppPadding.lrt24(),
      child: GlobalButtonWidget(
        onPressed: () {
          if (resetProvider.resetFormKey.currentState!.validate()) {
            try {
              AuthService.resetPassword(
                  resetProvider.resetController.text.trim());
              AppNavigator.go(
                context,
                const LoginScreen(),
              );
              GlobalSnackBarWidget().snackBar(
                  context, AppText.resetPasswordSent, AppColors.orangeColor);
            } on FirebaseAuthException catch (e) {
              GlobalSnackBarWidget()
                  .snackBar(context, e.message!, AppColors.redColor);
            }
          }
        },
        text: AppText.resetPassword,
        color: AppColors.orangeColor,
      ),
    );
  }
}
