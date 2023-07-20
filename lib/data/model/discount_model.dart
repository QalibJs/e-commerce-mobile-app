import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text.dart';

class DiscountModel {
  String discountText;
  String discountImage;
  Color color;
  DiscountModel({
    required this.discountText,
    required this.discountImage,
    required this.color,
  });

  static List<DiscountModel> discountModel = [
    DiscountModel(
      discountText: AppText.discount,
      discountImage: AppAssets.gift,
      color: AppColors.simpleOrangeColor,
    ),DiscountModel(
      discountText: AppText.discount1,
      discountImage: AppAssets.percentDiscount,
      color: AppColors.simpleBlueColor,
    ),
    DiscountModel(
      discountText: AppText.discount2,
      discountImage: AppAssets.discounts,
      color: AppColors.simpleGreenColor,
    ),
  ];
}
