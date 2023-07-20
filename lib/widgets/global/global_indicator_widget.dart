import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class GlobalIndicatorWidget extends StatelessWidget {
  const GlobalIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        
        padding: const EdgeInsets.all(15),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.progressBGColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: CircularProgressIndicator(
          
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
