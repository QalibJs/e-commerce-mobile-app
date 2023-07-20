import 'package:flutter/material.dart';

import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class SettingsTopWidget extends StatelessWidget {
  const SettingsTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppText.settings,
      style: AppTextStyle.costStyle(),
    );
  }
}
