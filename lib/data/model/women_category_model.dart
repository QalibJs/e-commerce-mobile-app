import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';

class WomenCategoryModel {
  String title;
  IconData addToBag;
  String price;
  String rate;
  String image;

  WomenCategoryModel({
    required this.title,
    required this.addToBag,
    required this.price,
    required this.rate,
    required this.image,
  });

  static List<WomenCategoryModel> womenCategoryModel = [
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '199.99 \$',
      rate: '3.1',
      title: 'Womens Clothes',
      image: AppAssets.kdn1,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '289.00 \$',
      rate: '2.3',
      title: 'Womens Clothes',
      image: AppAssets.kdn2,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '89.99 \$',
      rate: '4.7',
      title: 'Womens Clothes',
      image: AppAssets.kdn3,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '239.00 \$',
      rate: '2.9',
      title: 'Womens Clothes',
      image: AppAssets.kdn4,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '120.99 \$',
      rate: '3.7',
      title: 'Womens Clothes',
      image: AppAssets.kdn5,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '320.99 \$',
      rate: '1.6',
      title: 'Womens Clothes',
      image: AppAssets.kdn6,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '121.99 \$',
      rate: '2.5',
      title: 'Womens Clothes',
      image: AppAssets.kdn7,
    ),
    WomenCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '459.00 \$',
      rate: '4.2',
      title: 'Womens Clothes',
      image: AppAssets.kdn8,
    ),
  ];
}
