import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/flash_sale_model.dart';
import '../../flash_sales/screens/flash_sales_screen.dart';
import 'shopping_timer_widget.dart';

class ShoppingFlashSale extends StatelessWidget {
  const ShoppingFlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    List<ShoppingFlashSaleModel> mostPopularModel =
        ShoppingFlashSaleModel.mostPopularModel;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppPadding.lr12(),
          child: Row(
            children: [
              Text(
                AppText.flashSale,
                style: AppTextStyle.descriptionStyleB(),
              ),
              AppSizedBox.w15,
              const ShoppingTimerWidget()
            ],
          ),
        ),
        AppSizedBox.h30,
        SizedBox(
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: mostPopularModel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final popularModel = mostPopularModel[index];
              return GestureDetector(
                onTap: () {
                  AppNavigator.go(context, const FlashSalesScreen());
                },
                child: Container(
                  margin: AppPadding.lr12(),
                  width: 230,
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyBlue),
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(popularModel.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
