import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';

class MensClothesCategoryModel {
  String title;
  IconData addToBag;
  String price;
  String menImage;
  String rate;
  MensClothesCategoryModel({
    required this.title,
    required this.addToBag,
    required this.price,
    required this.rate,
    required this.menImage,
  });

  static List<MensClothesCategoryModel> womensClothes = [
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '199\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom11,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '289\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom21,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '89\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom31,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '239.00\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom41,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '120.99\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom91,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '320.99\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom61,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '121.99\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom111,
    ),
    MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '459.00\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom101,
    ),MensClothesCategoryModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '459.00\$',
      rate: '2.1',
      title: 'Men Clothes',
      menImage: AppAssets.erkgom101,
    ),
  ];
}
