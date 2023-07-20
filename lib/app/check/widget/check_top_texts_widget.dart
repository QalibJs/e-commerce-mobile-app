import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class CheckTopTextsWidget extends StatelessWidget {
  const CheckTopTextsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: AppPadding.lr12(),
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: Text(
            AppText.method,
            style: AppTextStyle.descriptionStyleB(),
          ),
        ),
        AppSizedBox.h10,
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          margin: AppPadding.lr12(),
          child: Text(
            "Növbəti səhifədə bu sifarişi nəzərdən keçirməyincə sizdən ödəniş tutulmayacaq.",
            style: AppTextStyle.simpleText(),
          ),
        ),
      ],
    );
  }
}
