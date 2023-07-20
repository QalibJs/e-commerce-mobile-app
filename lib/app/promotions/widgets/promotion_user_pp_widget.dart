import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';

class PromotionUserPpWidget extends StatelessWidget {
  const PromotionUserPpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12(),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              AppAssets.userpp,
            ),
          ),
        ),
      ),
    );
  }
}
