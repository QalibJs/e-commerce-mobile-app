import 'package:flutter/material.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../home/screens/home_screen.dart';

class CartModalWidget extends StatelessWidget {
  const CartModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.simpleGreyColor,
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          AppSizedBox.h5,
          Container(
            width: 120,
            height: 8,
            decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          AppSizedBox.h15,
          Container(
            width: 200,
            height: 100,
            color: AppColors.whiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppText.total , style: AppTextStyle.costStyle(),),
                AppSizedBox.w25,
                  Text("23 \$" , style: AppTextStyle.costStyle(),),
              ],
            ),
          ),
          AppSizedBox.h10,
          GlobalButtonWidget(
            text: AppText.goPayment,
            color: AppColors.blackColor,
            onPressed: () {
              AppNavigator.go(
                context,
                const HomeScreen(),
              );
            },
          ),
        ],
      ),
    );
  }
}
