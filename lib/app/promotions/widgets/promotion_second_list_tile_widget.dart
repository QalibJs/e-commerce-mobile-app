import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../product/screens/product_screen.dart';

class PromotionSecondListTileWidget extends StatelessWidget {
  final String productImage;
  final String title;
  final String productTitle;
  final String subtitle;
  final String description;
  final String price;
  final String imageUrl;
  final IconData icon;
  final int index;
  const PromotionSecondListTileWidget({
    super.key,
    required this.productImage,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.imageUrl, required this.productTitle, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lr12(),
      child: GestureDetector(
        onTap: () {
          AppNavigator.go(
            context,
            ProductScreen(
              description: description,
              imageUrl: imageUrl,
              price: price,
              title: productTitle,
              index: index, icon: icon,
            ),
          );
        },
        child: Container(
          width: 315,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blackColor, width: 0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              AppSizedBox.w5,
              Container(
                width: 101,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      productImage,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSizedBox.h15,
                  Text(
                    title,
                    style: AppTextStyle.promotionTitle(),
                  ),
                  AppSizedBox.h5,
                  Text(
                    "$subtitle - kod tələb olunmur",
                    style: AppTextStyle.promotionDescription(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
