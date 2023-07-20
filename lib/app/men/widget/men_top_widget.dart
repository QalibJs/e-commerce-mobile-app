import 'package:flutter/material.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';

class MenTopWidget extends StatelessWidget {
  final bool isMen;
  const MenTopWidget({super.key, required this.isMen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: AppPadding.lr12(),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isMen? AppColors.darkPurpleColor:AppColors.pink,
      ),
      child: Padding(
        padding: AppPadding.lrt24().copyWith(top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isMen ? AppText.sale : "",
                  style: AppTextStyle.costStyle(),
                ),
                AppSizedBox.h10,
                Row(
                  children: [
                    isMen
                        ? const SizedBox.shrink()
                        : Text(
                            "Full color SweatShirt",
                            style: AppTextStyle.womenBigtxtStyle(),
                          ),
                    Text(
                      isMen ? "Up to" : "",
                      style: AppTextStyle.upToStyle(),
                    ),
                    AppSizedBox.w10,
                    isMen
                        ? Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppAssets.strs),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                Text(
                  isMen ? "60% off" : "Sale up to 40%",
                  style: isMen
                      ? AppTextStyle.upToStyle()
                      : AppTextStyle.womenTxtStyle(),
                ),
                AppSizedBox.h15,
                Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(78),
                  ),
                  child: GlobalButtonWidget(
                    text: 'Get it Now',
                    color: AppColors.blackColor,
                  ),
                )
              ],
            ),
            const Spacer(),
            Container(
              margin: AppPadding.lr6().copyWith(top: 20),
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      isMen ? AppAssets.suit : AppAssets.wardrobe),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
