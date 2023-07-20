import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';

class FavouriteListTileWidget extends StatelessWidget {
  final String title;
  final String price;
  final String prdctImage;
  final IconData minus;
  final IconData bag;
  final void Function()? remove;
  final void Function()? addBag;
  const FavouriteListTileWidget({
    super.key,
    required this.title,
    required this.minus,
    required this.bag,
    required this.price,
    required this.prdctImage,
    required this.addBag,
    this.remove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.lrt12(),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 90,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              border: const Border.symmetric(),
            ),
            child: Row(
              children: [
                Container(
                  width: 75,
                  height: 85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(prdctImage),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                AppSizedBox.w10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSizedBox.h15,
                    Text(
                      title,
                      style: AppTextStyle.costStyle(),
                    ),
                    AppSizedBox.h5,
                    AppSizedBox.h5,
                    Text(
                      price,
                      style: AppTextStyle.personalSimpleText(),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    GestureDetector(
                      onTap: addBag,
                      child: Container(
                        margin: AppPadding.lr6(),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: AppColors.simplewGreyColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            bag,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: remove,
                      child: Container(
                        margin: AppPadding.lr6(),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: AppColors.simplewGreyColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Icon(
                            minus,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          AppSizedBox.h5,
          Container(
            width: MediaQuery.of(context).size.width,
            height: 1.4,
            color: AppColors.simpleGreyColor,
          )
        ],
      ),
    );
  }
}
