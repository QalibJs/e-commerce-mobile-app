import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class NotificationEmptyWidget extends StatelessWidget {
  const NotificationEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.notifications,
              ),
            ),
          ),
        ),
        AppSizedBox.h15,
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          margin: AppPadding.lrt24().copyWith(top: 10),
          child: Column(
            children: [
              Text(
                "Hələki heç bir ismarıc yoxdur",
                textAlign: TextAlign.center,
                style: AppTextStyle.descriptionStyleB(),
              ),
              AppSizedBox.h10,
              Text(
                "İsmarıc əldə etdiyinizdə sizə bildirim gələcəkdir.",
                textAlign: TextAlign.center,
                style: AppTextStyle.costStyle(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
