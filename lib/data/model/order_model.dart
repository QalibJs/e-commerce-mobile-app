import '../../constants/app_assets.dart';

class OrderModel {
  String image;
  OrderModel({
    required this.image,
  });

  static List<OrderModel> orderModel = [
    OrderModel(image: AppAssets.secondHand),
    OrderModel(image: AppAssets.dijitalServis),
    OrderModel(image: AppAssets.market)
  ];
}
