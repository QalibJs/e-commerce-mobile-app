import '../../constants/app_assets.dart';

class SettingsModel {
  String photo;
  String description;
  SettingsModel({
    required this.photo,
    required this.description,
  });

  static List<SettingsModel> sidebarModel = [
    SettingsModel(photo: AppAssets.language, description: "Dillər"),
    SettingsModel(photo: AppAssets.browser, description: "Brauzer parametrləri"),
    SettingsModel(photo: AppAssets.privacy, description: "Hesab məxfiliyi"),
    SettingsModel(photo: AppAssets.notify, description: "Bildirişlər"),
    SettingsModel(
        photo: AppAssets.eye, description: "Həssaslıq məzmununa nəzarət"),
  ];
}
