import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class CheckTopWidget extends StatelessWidget {
  final bool isShipping;
  const CheckTopWidget({
    super.key,
    required this.isShipping,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.simpleGreyColor,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.greenBlueColor),
                child: Icon(
                  Icons.check_outlined,
                  color: AppColors.whiteColor,
                ),
              ),
              AppSizedBox.w10,
              Text(
                "Göndərmə",
                style: AppTextStyle.costStyle(),
              ),
              AppSizedBox.w1
            ],
          ),
          Text(
            "----",
            style: AppTextStyle.simpleText(),
          ),
          Row(
            children: [
              AppSizedBox.w1,
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: isShipping
                        ? AppColors.blackColor
                        : AppColors.greenBlueColor),
                child: isShipping
                    ? Center(
                        child: Text(
                          "2",
                          style: AppTextStyle.shopNow(),
                        ),
                      )
                    : Icon(
                        Icons.check_outlined,
                        color: AppColors.whiteColor,
                      ),
              ),
              AppSizedBox.w10,
              Text(
                "Ödəniş",
                style: AppTextStyle.costStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
