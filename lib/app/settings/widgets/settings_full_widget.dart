import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import 'settings_input_widget.dart';
import 'settings_list_view_widget.dart';

class SettingsFullWidget extends StatelessWidget {
  const SettingsFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SettingsInputWidget(),
        AppSizedBox.h15,
        const SettingsListViewWidget()
      ],
    );
  }
}
