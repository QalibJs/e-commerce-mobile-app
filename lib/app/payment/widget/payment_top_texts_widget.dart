import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class PaymentTopText extends StatelessWidget {
  const PaymentTopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 82,
      margin: AppPadding.lr12(),
      child: Column(
        children: [
          AppSizedBox.h10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Zəhmət olmasa, sifarişinizi təsdiqləyin",
                style: AppTextStyle.orderstyle(),
              ),
            ],
          ),
          AppSizedBox.h10,
          Text(
            "Sifariş təqdim et üzərinə klikləməklə, siz Fintory-nin İstifadə Şərtləri və Məxfilik Siyasəti ilə razılaşırsınız",
            style: AppTextStyle.simpleOrderText(),
          ),
        ],
      ),
    );
  }
}
