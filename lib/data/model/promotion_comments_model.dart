class PromotionUsersModel {
  final String userName;
  final String userCity;
  PromotionUsersModel({
    required this.userName,
    required this.userCity,
  });
  static List<PromotionUsersModel> promotionCommentsModel = [
    PromotionUsersModel(
      userCity: 'Azerbaijan/Salyan',
      userName: 'Qalib Alizade',
    ),
    PromotionUsersModel(
      userCity: 'Azerbaijan/Baku',
      userName: 'Rustem Mursudlu',
    ),
    PromotionUsersModel(
      userCity: 'Azerbaijan/Sumqayit',
      userName: 'Emin Abdullazade',
    ),
    PromotionUsersModel(
      userCity: 'Azerbaijan/Montin',
      userName: 'Ulvi Amiraslanov',
    ),
  ];
}
