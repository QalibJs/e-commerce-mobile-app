import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/title_model.dart';
import '../../../widgets/global/global_snacbar_widget.dart';

class ShoppingThirdWidget extends StatelessWidget {
  const ShoppingThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<TitleModel> titleModel = TitleModel.titleModel;
    return SizedBox(
      height: 650,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          childAspectRatio: 0.67,
        ),
        itemBuilder: (context, index) {
          final title = titleModel[index];
          return GestureDetector(
            child: Container(
              margin: AppPadding.lr6(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.greyBlue, width: 0.8),
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppSizedBox.w10,
                      Text(
                        title.discount,
                        style: AppTextStyle.costStyle(),
                      ),
                      const Spacer(),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.star),
                          ),
                        ),
                      ),
                      AppSizedBox.w1,
                      Padding(
                        padding: AppPadding.lr6().copyWith(left: 0),
                        child: Text(
                          title.rate,
                          style: AppTextStyle.costStyle(),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            title.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppSizedBox.h10,
                  Row(
                    children: [
                      AppSizedBox.w5,
                      Text(
                        title.title,
                        style: AppTextStyle.greyBlueText(),
                      ),
                    ],
                  ),
                  AppSizedBox.h10,
                  Row(
                    children: [
                      AppSizedBox.w5,
                      Text(
                        "${title.price} \$",
                        style: AppTextStyle.cartTitle(),
                      ),
                      const Spacer(),
                      Padding(
                        padding: AppPadding.lr6().copyWith(left: 0),
                        child: GestureDetector(
                          onTap: () {
                            GlobalSnackBarWidget().snackBar(
                              context,
                              AppText.addToCart,
                              AppColors.simpleGreenColor,
                            );
                          },
                          child: const Icon(
                            Icons.add_shopping_cart_outlined,
                            size: 26,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
