import 'package:flutter/material.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class ShoppingListTileWidget extends StatelessWidget {
  final Color color;
  final String dicountText;
  final String image;
  const ShoppingListTileWidget({
    super.key,
    required this.color,
    required this.dicountText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      margin: AppPadding.lr12(),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppSizedBox.w10,
          Column(
            children: [
              AppSizedBox.h10,
              Text(
                dicountText,
                style: AppTextStyle.discountStyle(),
              ),
              AppSizedBox.h50,
              SizedBox(
                width: 100,
                height: 50,
                child: GlobalButtonWidget(
                  onPressed: () {
                    dialog(context);
                  },
                  text: AppText.shopNow,
                  color: AppColors.darkBlueColor,
                ),
              )
            ],
          ),
          const Spacer(),
          Container(
            width: 80,
            height: 80,
            margin: AppPadding.lr12().copyWith(left: 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void dialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.whiteColor,
                  border: Border.all(color: AppColors.darkGreyBlue, width: 5),
                ),
                child: Center(
                  child: Text(
                    "tezliklə xidmətinizdə olacaq",
                    style: AppTextStyle.costStyle(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
