import '../../constants/app_assets.dart';

class ProfileModel {
  String image;
  String title;
  String icon;
  ProfileModel({
    required this.image,
    required this.title,
    required this.icon,
  });

  static List<ProfileModel> profileModel = [
    ProfileModel(image: AppAssets.profile, title: "Mənim Hesabım", icon: ">"),
    ProfileModel(image: AppAssets.gear, title: "Parametrlər", icon: ">"),
    ProfileModel(image: AppAssets.trolley, title: "Səbət", icon: ">"),
    ProfileModel(image: AppAssets.box, title: "Sifariş", icon: ">"),
    ProfileModel(image: AppAssets.promotion, title: "Promosyonlar", icon: ">"),
    ProfileModel(image: AppAssets.trnoff, title: "Hesabdan Çıxış", icon: ">"),
  ];
}
