import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../widgets/personal_informations_full_widget.dart';
import '../widgets/personal_list_view_widget.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppText.personalInformation,
          style: AppTextStyle.costStyle(),
        ),
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: Column(
        children: const [
          PersonalListViewWidget(),
          PersonalInformationsFullWidget()
        ],
      ),
    );
  }
}
