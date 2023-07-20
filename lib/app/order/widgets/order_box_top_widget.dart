import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class OrderBoxTopWidget extends StatelessWidget {
  final String cost;
  final String date;
  final int index;
  const OrderBoxTopWidget({
    super.key,
    required this.cost,
    required this.date,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt18().copyWith(bottom: 12),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: AppTextStyle.whiteText2(),
                  ),
                  AppSizedBox.h10,
                  Row(
                    children: [
                      Text(
                        AppText.subtotal,
                        style: AppTextStyle.simpleText(),
                      ),
                      Text(
                        cost,
                        style: AppTextStyle.simpleText(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          AppSizedBox.h10,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: AppColors.amber,
          )
        ],
      ),
    );
  }
}
