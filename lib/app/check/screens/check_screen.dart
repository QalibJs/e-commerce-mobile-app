import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../widgets/global/global_fake_bar_widget.dart';
import '../widget/check_bottom_text_widget.dart';
import '../widget/check_button_widget.dart';
import '../widget/check_exp_full_widget.dart';
import '../widget/check_first_inputs_widget.dart';
import '../widget/check_select_card_widget.dart';
import '../widget/check_top_texts_widget.dart';
import '../widget/check_top_widgett.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: Text(AppText.check),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CheckTopWidget(isShipping: true,),
            AppSizedBox.h15,
            const CheckTopTextsWidget(),
            AppSizedBox.h20,
            const CheckSelectCardWidget(),
            AppSizedBox.h20,
            const CheckFirstInputsWidget(),
            const CheckExpFullWidget(),
            AppSizedBox.h15,
            const CheckBottomTextWidget(),
            AppSizedBox.h30,
            const CheckbuttonWidget(),
            const GlobalFakeBarWidget(),
          ],
        ),
      ),
    );
  }
}
