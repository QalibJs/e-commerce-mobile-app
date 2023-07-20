import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../widgets/otp_app_bar_widget.dart';
import '../widgets/otp_description.dart';
import '../widgets/otp_pinput_widget.dart';
import '../widgets/otp_top_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        elevation: 0.2,
        title: const OtpAppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizedBox.h70,
            const OtpTopWidget(),
            AppSizedBox.h120,
            const OtpPinputWidget(),
            AppSizedBox.h120,
            const OtpDescriptionWidget()
          ],
        ),
      ),
    );
  }
}
