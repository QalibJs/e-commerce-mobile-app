import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../widgets/onboard_widget.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.progressBGColor,
      body: const OnboardWidget(),
    );
  }
}
