import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text.dart';
import '../../../widgets/global/global_input_widget.dart';

class SettingsInputWidget extends StatelessWidget {
  const SettingsInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalInputWidget(
      isHome: false,
      hintText: AppText.search,
      isPassword: false,
      prefixIcon: Icon(
        Icons.search,
        color: AppColors.blueColor,
      ),
    );
  }
}
