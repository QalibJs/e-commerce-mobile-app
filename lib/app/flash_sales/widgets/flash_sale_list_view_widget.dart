import 'package:flutter/material.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/flash_sale_model.dart';

class FlashSaleListViewWidget extends StatelessWidget {
  const FlashSaleListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ShoppingFlashSaleModel> mostPopularModel =
        ShoppingFlashSaleModel.mostPopularModel;

    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: mostPopularModel.length,
            itemBuilder: (context, index) {
              final popularProducts = mostPopularModel[index];
              return Padding(
                padding: AppPadding.lrt24().copyWith(top: 12),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  child: Row(
                    children: [
                      Container(
                        margin: AppPadding.lr6(),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: AppColors.backButtonColor,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage(popularProducts.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppSizedBox.w10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppSizedBox.h5,
                          Text(
                            popularProducts.title,
                            style: AppTextStyle.flashTitle(),
                          ),
                          AppSizedBox.h20,
                          Text(
                            popularProducts.lastPrice,
                            style: AppTextStyle.overLineStyle(),
                          ),
                          AppSizedBox.h5,
                          Text(
                            popularProducts.price,
                            style: AppTextStyle.amberStyle(),
                          ),
                        ],
                      ),
                      Container(
                        margin: AppPadding.lrt24().copyWith(left: 0, right: 0),
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GlobalButtonWidget(
                          text: AppText.buy,
                          color: AppColors.amber,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
