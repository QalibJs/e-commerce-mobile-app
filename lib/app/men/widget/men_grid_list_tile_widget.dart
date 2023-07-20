import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class ListGridListTileWidget extends StatelessWidget {
  final String image;
  final String price;
  final String title;
  final String rate;
  const ListGridListTileWidget(
      {super.key,
      required this.image,
      required this.rate,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 297,
      margin: AppPadding.lr12(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          // fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.greyBlue, width: 0.8),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: AppPadding.lr6().copyWith(bottom: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: AppPadding.lr6().copyWith(top: 6),
              child: Row(
                children: [
                  Text(
                    rate,
                    style: AppTextStyle.rateStyle(),
                  ),
                  AppSizedBox.w5,
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.star),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: AppPadding.lr6().copyWith(top: 5),
                    child: const Icon(Icons.favorite_border),
                  )
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: AppTextStyle.costStyle(),
                ),
                Row(
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.simpleOrderText(),
                    ),
                    const Spacer(),
                    Padding(
                      padding: AppPadding.lr6(),
                      child: const Icon(
                        Icons.add_shopping_cart,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
