import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../widgets/resest_top_text_widget.dart';
import '../widgets/reset_button_widget.dart';
import '../widgets/reset_information_box.dart';
import '../widgets/reset_input_widget.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.scaffoldColor,
        elevation: 0,
        title: Center(child: Text(AppText.resetPassword)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizedBox.h120,
            const ResetTopTextWidget(),
            const ResetInputWidget(),
            const ResetButtonWidget(),
            AppSizedBox.h20,
            const ResetInformationBox()
          ],
        ),
      ),
    );
  }
}
