import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';

class CheckSelectCardWidget extends StatelessWidget {
  const CheckSelectCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: AppPadding.lr12().copyWith(right: 0),
          child: Text(
            "Credit Card",
            style: AppTextStyle.costStyle(),
          ),
        ),
        const Spacer(),
        Container(
          margin: AppPadding.lr12(),
          width: 100,
          height: 60,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(AppAssets.visa),
          )),
        )
      ],
    );
  }
}
