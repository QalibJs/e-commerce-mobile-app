import '../../constants/app_assets.dart';

class LanguageModel {
  final String language;
  final String flag;
  LanguageModel({
    required this.language,
    required this.flag,
  });

  static List<LanguageModel> languages = [
    LanguageModel(language: "Azerbaycan", flag: AppAssets.aze),
    LanguageModel(language: "English", flag: AppAssets.uk),
    LanguageModel(language: "Turkish", flag: AppAssets.tr),
    LanguageModel(language: "Russian", flag: AppAssets.rus),
  ];
}
