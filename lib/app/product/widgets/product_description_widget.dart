import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class Productdescription extends StatelessWidget {
  final String description;
  const Productdescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppPadding.lr12(),
          child: Text(
            AppText.productDetails,
            style: AppTextStyle.productDetails(),
          ),
        ),
        AppSizedBox.h10,
        Container(
          margin: AppPadding.lr12(),
          height: 120,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              Text(
                description,
                style: AppTextStyle.productDescriptionStyle(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
