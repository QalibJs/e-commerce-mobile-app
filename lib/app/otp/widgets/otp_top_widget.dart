import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/password/password_cubit.dart';
import '../../../widgets/global/global_snacbar_widget.dart';
import '../../register/screens/register_screen.dart';
import 'otp_on_end_widget.dart';

class OtpTopWidget extends StatefulWidget {
  const OtpTopWidget({super.key});

  @override
  State<OtpTopWidget> createState() => _OtpTopWidgetState();
}

class _OtpTopWidgetState extends State<OtpTopWidget> {
  @override
  Widget build(BuildContext context) {
    PasswordCubit passwordCubit = context.read<PasswordCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              AppText.otpAppBar,
              style: AppTextStyle.descriptionStyleB(),
            ),
            AppSizedBox.h10,
            Text(
              "Kodunuzu göndərdik ${passwordCubit.registerPhoneNumberController.text.trim()}",
              style: AppTextStyle.otpTopTexts(),
            ),
            AppSizedBox.h10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bu kodun vaxtı bitəcək ",
                  style: AppTextStyle.otpTopTexts(),
                ),
                AppSizedBox.w1,
                TweenAnimationBuilder(
                  tween: Tween(begin: 120.0, end: 0),
                  duration: const Duration(seconds: 120),
                  builder: (context, value, child) => OtpOnENdWidget(
                    value: value,
                  ),
                  onEnd: () {
                    GlobalSnackBarWidget().snackBar(
                      context,
                      AppText.timeOut,
                      AppColors.redColor,
                    );
                    AppNavigator.go(context, const RegisterScreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
