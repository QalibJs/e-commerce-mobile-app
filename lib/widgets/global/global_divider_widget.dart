import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_padding.dart';

class GlobalDividerWidget extends StatelessWidget {
  const GlobalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: AppPadding.lr6(),
      height: 0.7,
      decoration: BoxDecoration(
        color: AppColors.dividerColor,
        borderRadius: BorderRadius.circular(24)
      ),
    );
  }
}