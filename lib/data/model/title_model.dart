import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_text.dart';

class TitleModel {
  String title;
  String discount;
  String rate;
  double price;
  int count;
  String image;
  IconData removeIcon;
  IconData bag;
  IconData favIcon;
  TitleModel({
    required this.rate,
    required this.bag,
    required this.favIcon,
    required this.image,
    required this.price,
    required this.discount,
    required this.title,
    required this.removeIcon,
    required this.count,
  });

  static List<TitleModel> titleModel = [
    TitleModel(
      removeIcon: Icons.remove,
      title: "Backpack",
      discount: AppText.off30,
      rate: '4.9',
      count: 1,
      price: 110,
      image: AppAssets.switmen1,
      favIcon: Icons.favorite_border_outlined,
      bag: Icons.add_shopping_cart_outlined,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen3,
      price: 72,
      removeIcon: Icons.remove,
      title: "Men's Cotton Shirt",
      discount: AppText.off25,
      rate: '3.7',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.kdnsw1,
      price: 12,
      removeIcon: Icons.remove,
      title: "Men's Cotton Jacket",
      discount: AppText.off30,
      rate: '2.1',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.erksw1,
      price: 123,
      removeIcon: Icons.remove,
      title: "Men's Casual Slim fit",
      discount: AppText.off10,
      rate: '4.9',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.kdnsw2,
      price: 84,
      removeIcon: Icons.remove,
      title: "Womens Naga Gold",
      discount: AppText.off25,
      rate: '3.4',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.erksw2,
      price: 100,
      removeIcon: Icons.remove,
      title: "Gold Petite",
      discount: AppText.off25,
      rate: '4.5',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "White Gold Plated",
      discount: AppText.off10,
      rate: '4',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "Pierced Rose Gold",
      discount: AppText.off30,
      rate: '3.2',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "USB 3.0",
      discount: AppText.off10,
      rate: '1.9',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "Sata ||| 6 gb/s",
      discount: AppText.off30,
      rate: '4.2',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "Slicon Power",
      discount: AppText.off25,
      rate: '4.9',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "AIWD 4 TB",
      discount: AppText.off30,
      rate: '4.7',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "Acer SB 220",
      discount: AppText.off10,
      rate: '3.7',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 100,
      removeIcon: Icons.remove,
      title: "Samsung 49 inch",
      discount: AppText.off10,
      rate: '2.9',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 1,
      removeIcon: Icons.remove,
      title: "Jacket Winter Coats",
      discount: AppText.off25,
      rate: '2.7',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      image: AppAssets.switmen1,
      price: 1,
      removeIcon: Icons.remove,
      title: "Moto Biker Jacket",
      discount: AppText.off10,
      rate: '5',
      count: 1,
      favIcon: Icons.favorite_border_outlined,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 1,
      removeIcon: Icons.remove,
      title: "Rain Jacket Women",
      discount: AppText.off25,
      rate: '4.1',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 1,
      removeIcon: Icons.remove,
      title: "Boat Neck v",
      discount: AppText.off25,
      rate: '2.2',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 1,
      removeIcon: Icons.remove,
      title: "Sleeve Moisture",
      discount: AppText.off30,
      rate: '3.2',
      count: 1,
    ),
    TitleModel(
      bag: Icons.add_shopping_cart_outlined,
      favIcon: Icons.favorite_border_outlined,
      image: AppAssets.switmen1,
      price: 1,
      removeIcon: Icons.remove,
      title: "Cotton Short",
      discount: AppText.off25,
      rate: '4.4',
      count: 1,
    ),
  ];
}
