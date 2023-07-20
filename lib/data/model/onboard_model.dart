import '../../constants/app_assets.dart';

class OnboardModel {
  String title;
  String title2;
  String imageUrl;
  OnboardModel({
    required this.title,
    required this.imageUrl,
    required this.title2,
  });

  static List<OnboardModel> promotionModel = [
    OnboardModel(
      title2: "yeni məhsullarla tanış olmaq",
      title: "platformamızdan istifadə edərək sifarişinizi tez əldə edin",
      imageUrl: AppAssets.shoppingUrl,
    ),
    OnboardModel(
      title: "Etibarlı platformamızla alış-verişdən həzz alın",
      imageUrl: AppAssets.shoppingUrl1,
      title2: 'Etibarınız bizim üçün önəmlidir',
    ),
    OnboardModel(
      title: "Alış-veriş səyahətinizə bizimlə başlayın",
      imageUrl: AppAssets.shoppingUrl2,
      title2: "Bunun üçün nəyi gözləyirsən?",
    ),
  ];
}
