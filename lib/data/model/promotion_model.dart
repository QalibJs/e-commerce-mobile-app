import '../../constants/app_assets.dart';

class PromotionModel {
  String image;
  String data;
  PromotionModel({
    required this.image,
    required this.data,
  });

  static List<PromotionModel> promotionModel = [
    PromotionModel(image: AppAssets.amazon, data: 'Amazon'),
    PromotionModel(image: AppAssets.shopify, data: 'Shopify'),
    PromotionModel(image: AppAssets.trendyol, data: 'Trendyol'),
    PromotionModel(image: AppAssets.ebay, data: 'Ebay '),
  ];
}
