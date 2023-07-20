import '../../login/screen/login_screen.dart';
import '../../../hive/hive_service.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/profile_model.dart';
import '../../cart/screen/cart_screen.dart';
import '../../order/screens/order_screen.dart';
import '../../promotions/screens/promotions_screen.dart';
import '../../settings/screens/setting_screen.dart';

class ProfileBottomWidget extends StatelessWidget {
  const ProfileBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProfileModel> profileModel = ProfileModel.profileModel;
    return Container(
      margin: AppPadding.t300().copyWith(top: 260),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: AppPadding.lrt12().copyWith(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hesaba ümumi baxış",
              style: AppTextStyle.costStyle(),
            ),
            AppSizedBox.h20,
            Expanded(
              child: SizedBox(
                child: ListView.builder(
                  itemCount: profileModel.length,
                  itemBuilder: (context, index) {
                    final profile = profileModel[index];
                    return GestureDetector(
                      onTap: () {
                        if (index == 2) {
                          AppNavigator.go(context, const CartScreen());
                        }
                        if (index == 1) {
                          AppNavigator.go(context, const SettingScreen());
                        }
                        if (index == 4) {
                          AppNavigator.go(context, const PromotionsScreen());
                        }
                        if (index == 5) {
                          AppNavigator.go(context, const LoginScreen());
                          HiveService.instance
                              .then((value) => value.saveData("Register", 3));
                        }
                        if (index == 3) {
                          AppNavigator.go(context, const OrderScreen());
                        }
                      },
                      child: Container(
                        color: AppColors.transparentColor,
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        margin: AppPadding.lrt12().copyWith(top: 18),
                        child: Row(
                          children: [
                            AppSizedBox.w5,
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    profile.image,
                                  ),
                                ),
                              ),
                            ),
                            AppSizedBox.w15,
                            Text(
                              profile.title,
                              style: AppTextStyle.profileText(),
                            ),
                            const Spacer(),
                            Text(
                              ">",
                              style: AppTextStyle.descriptionStyleB(),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
