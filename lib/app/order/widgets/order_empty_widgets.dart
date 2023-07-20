import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class OrderEmptyWidgets extends StatelessWidget {
  final String top;
  final String bottom;
  final String image;
  const OrderEmptyWidgets(
      {super.key,
      required this.top,
      required this.bottom,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(70),
            ),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
          AppSizedBox.h20,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            margin: AppPadding.lrt24().copyWith(top: 10),
            child: Column(
              children: [
                Text(
                  top,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.whiteTextt(),
                ),
                AppSizedBox.h10,
                Text(
                  bottom,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.whiteTextt2(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
