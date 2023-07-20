import 'package:flutter/material.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/promotion_model.dart';

class PromotionTopListViewWidget extends StatelessWidget {
  const PromotionTopListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<PromotionModel> promotionModel = PromotionModel.promotionModel;
    return SizedBox(
      height: 141,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: promotionModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final promotions = promotionModel[index];
          return Column(
            children: [
              Padding(
                padding: AppPadding.lrt18().copyWith(top: 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(promotions.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(120),
                  ),
                ),
              ),
              AppSizedBox.h10,
              Text(
                promotions.data,
                style: AppTextStyle.cartTitle(),
              )
            ],
          );
        },
      ),
    );
  }
}
