import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/shopping_best_sale_model.dart';

class ShoppingBestSaleWidget extends StatelessWidget {
  const ShoppingBestSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ShoppingBestSalemodel> shoppingBestSalemodel =
        ShoppingBestSalemodel.shoppingBestSalemodel;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppPadding.lrt12(),
              child: Text(
                AppText.bestSale,
                style: AppTextStyle.descriptionStyleB(),
              ),
            ),
            const Spacer(),
            Padding(
              padding: AppPadding.lrt12().copyWith(top: 18),
              child: Text(
                AppText.seeAll,
                style: AppTextStyle.simpleOrderText(),
              ),
            ),
          ],
        ),
        AppSizedBox.h10,
        SizedBox(
          height: 350,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: shoppingBestSalemodel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final bestSale = shoppingBestSalemodel[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: AppPadding.lrt12(),
                    width: 160,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        width: 0.68,
                        color: AppColors.greyBlue,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(bestSale.image),
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppPadding.lrt12().copyWith(
                      left: 14,
                      right: 14,
                    ),
                    child: Text(
                      bestSale.title,
                      style: AppTextStyle.costStyle(),
                    ),
                  ),
                  Padding(
                    padding: AppPadding.lrt12().copyWith(
                      top: 6,
                      left: 14,
                      right: 14,
                    ),
                    child: Text(
                      bestSale.price,
                      style: AppTextStyle.simpleOrderText(),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
