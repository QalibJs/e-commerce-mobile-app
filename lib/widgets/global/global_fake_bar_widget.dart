import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class GlobalFakeBarWidget extends StatelessWidget {
  const GlobalFakeBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 5,
      color: AppColors.whiteColor,
    );
  }
}
