import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class ShoppingTopTextWidget extends StatelessWidget {
  const ShoppingTopTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPadding.lr6(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppSizedBox.w10,
              Text(
                "${AppText.hello} !", 
                style: AppTextStyle.descriptionStyleB(),
              ),
            ],
          ),
          AppSizedBox.h5,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppSizedBox.w10,
              Text(
                "Gəlin bir şey alış-veriş edək!", //!NAME
                style: AppTextStyle.descriptionStyleS(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
