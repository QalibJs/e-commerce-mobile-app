import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/category_model.dart';
import '../../../provider/shopping_provider.dart';

class ShoppingCategoryListViewWidget extends StatelessWidget {
  const ShoppingCategoryListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ShoppingProvider shoppingProvider = context.watch<ShoppingProvider>();

    List<CategoryModel> categoryModel = CategoryModel.categoryModels;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 30,
      child: ListView.builder(
        itemCount: categoryModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categorylist = categoryModel[index];
          return GestureDetector(
            onTap: () {
              shoppingProvider.selectCategory(index);
              shoppingProvider.controller.jumpToPage(index);
            },
            child: Container(
              margin: AppPadding.lr6(),
              decoration: BoxDecoration(
                border: Border.all(
                  color: shoppingProvider.currentIndex == index
                      ? AppColors.darkGreyBlue
                      : AppColors.blackColor,
                  width: 1.2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: AppPadding.lr6().copyWith(
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  categorylist.catefories,
                  style: shoppingProvider.currentIndex == index
                      ? AppTextStyle.shoppingSelectedText()
                      : AppTextStyle.registerAndLoginDescription(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
