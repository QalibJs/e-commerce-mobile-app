import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../widgets/settings_full_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.greyColor,
        centerTitle: true,
        title: Text(
          AppText.settings,
          style: AppTextStyle.whiteText2(),
        ),
      ),
      body: const SettingsFullWidget(),
    );
  }
}
