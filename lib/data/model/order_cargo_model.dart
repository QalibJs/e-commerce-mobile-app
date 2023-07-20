import '../../constants/app_assets.dart';

class OrderCargoModel {
  String cargoText;
  String subtotalText;
  String assetImage;
  OrderCargoModel({
    required this.cargoText,
    required this.subtotalText,
    required this.assetImage,
  });

  static List<OrderCargoModel> orderModels = [
    OrderCargoModel(
      cargoText: "cargoText",
      subtotalText: "subtotalText",
      assetImage: AppAssets.aze,
    )
  ];
}
