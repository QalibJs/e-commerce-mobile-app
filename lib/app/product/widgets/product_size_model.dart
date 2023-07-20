import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../data/model/size_model.dart';
import '../../../provider/shopping_provider.dart';

class ProductSizeModel extends StatelessWidget {
  const ProductSizeModel({super.key});

  @override
  Widget build(BuildContext context) {
    List<SizeModel> sizeModel = SizeModel.sizeModel;
    ShoppingProvider shoppingProvider = context.watch<ShoppingProvider>();
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: sizeModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final sizes = sizeModel[index];
          return Padding(
            padding: AppPadding.lr6(),
            child: BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    shoppingProvider.selectSize(index);
                    
                  },
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: shoppingProvider.currentSize == index
                          ? AppColors.blueColor
                          : AppColors.whiteColor,
                    ),
                    child: Center(
                        child: Text(
                      sizes.sizes,
                      style: AppTextStyle.productSizeStyle(),
                    )),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
