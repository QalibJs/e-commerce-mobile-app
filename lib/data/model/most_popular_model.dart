import '../../constants/app_assets.dart';

class MostPopularModel {
  String image;
  String title;
  String price;
  MostPopularModel({
    required this.image,
    required this.title,
    required this.price,
  });

  static List<MostPopularModel> mostPopularModels = [
    MostPopularModel(
        image: AppAssets.erkgom41, title: "Sweat shirt", price: "199.99\$"),
    MostPopularModel(image: AppAssets.kdn5, title: "Hijab", price: "82.99\$"),
    MostPopularModel(
        image: AppAssets.switwomen2, title: "T-shirt", price: "49.99\$"),
    MostPopularModel(
        image: AppAssets.switmen1, title: "Sweat shirt", price: "39.29\$"),
    MostPopularModel(
        image: AppAssets.poperk1, title: "T-shirt", price: "91.99\$"),
    MostPopularModel(
        image: AppAssets.poperk2, title: "T-shirt", price: "19.99\$"),
  ];
}
