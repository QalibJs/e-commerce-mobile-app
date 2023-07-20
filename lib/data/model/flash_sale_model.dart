import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';

class ShoppingFlashSaleModel {
  String title;
  IconData addToBag;
  String price;
  String lastPrice;
  String image;
  ShoppingFlashSaleModel({
    required this.title,
    required this.image,
    required this.addToBag,
    required this.price,
    required this.lastPrice,
  });

  static List<ShoppingFlashSaleModel> mostPopularModel = [
    ShoppingFlashSaleModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '100.00\$',
      title: 'Womens Clothes',
      image: AppAssets.switwomen1,
      lastPrice: '230.00\$',
    ),
    ShoppingFlashSaleModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '449.99\$',
      lastPrice: '499.99\$',
      title: 'Womens Clothes',
      image: AppAssets.erksw1,
    ),
    ShoppingFlashSaleModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '179.99\$',
      lastPrice: '209.99\$',
      title: 'Womens Clothes',
      image: AppAssets.switmen32,
    ),
    ShoppingFlashSaleModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '129.00\$',
      lastPrice: '169.00\$',
      title: 'Womens Clothes',
      image: AppAssets.erksw2,
    ),
    ShoppingFlashSaleModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '199.99\$',
      lastPrice: '239.99\$',
      title: 'Womens Clothes',
      image: AppAssets.switwomen3,
    ),
    ShoppingFlashSaleModel(
      addToBag: Icons.add_shopping_cart_outlined,
      price: '229.00\$',
      lastPrice: '249.00\$',
      title: 'Womens Clothes',
      image: AppAssets.switmen1,
    ),
  ];
}
