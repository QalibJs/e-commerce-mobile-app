import '../../constants/app_assets.dart';

class ShoppingBestSalemodel {
  String title;
  String price;
  String image;

  ShoppingBestSalemodel({
    required this.title,
    required this.image,
    required this.price,
  });
  static List<ShoppingBestSalemodel> shoppingBestSalemodel = [
    ShoppingBestSalemodel(
      title: "Sweat shirt",
      image: AppAssets.switmen1,
      price: "49.99 \$",
    ),
    ShoppingBestSalemodel(
      title: "Sweat shirt",
      image: AppAssets.switmen2,
      price: "29.99 \$",
    ),
    ShoppingBestSalemodel(
      title: "Sweat shirt",
      image: AppAssets.switmen3,
      price: "39.99 \$",
    ),
    ShoppingBestSalemodel(
      title: "Sweat shirt",
      image: AppAssets.kdnsw2,
      price: "49.99 \$",
    ),
    ShoppingBestSalemodel(
      title: "Sweat shirt",
      image: AppAssets.kdn1,
      price: "29.00 \$",
    ),
    ShoppingBestSalemodel(
      title: "Sweat shirt",
      image: AppAssets.erkgom81,
      price: "33.99 \$",
    ),
  ];
}
