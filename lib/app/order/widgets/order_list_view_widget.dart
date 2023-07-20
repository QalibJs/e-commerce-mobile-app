import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/cart/cart_cubit.dart';
import '../../../data/model/products_model.dart';
import '../../../provider/cart_provider.dart';
import 'order_list_tile_widget.dart';

class OrderListViewWidget extends StatelessWidget {
  const OrderListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = context.watch<CartCubit>();
    CartProvider cartProvider = context.read<CartProvider>();
    List<ProductModel> productModel = cartProvider.products;
    return cartProvider.products.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    color: AppColors.whiteColor),
                child: Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.ord),
                      ),
                    ),
                  ),
                ),
              ),
              AppSizedBox.h15,
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: AppPadding.lrt24().copyWith(top: 10),
                child: Column(
                  children: [
                    Text(
                      "Hələki heç bir mehsul yoxdur",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.whiteTextt(),
                    ),
                    AppSizedBox.h10,
                    Text(
                      "Məhsullarımızla tanış olmaq üçün ana səhifəyə baxıb kateqoriyalara uyğun məhsulları izləyə bilərsiniz.",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.whiteTextt2(),
                    ),
                  ],
                ),
              ),
            ],
          )
        : ListView.builder(
            itemCount: productModel.length,
            itemBuilder: (context, index) {
              final ProductModel product = productModel[index];

              return OrderListTileWidget(
                cost:
                    (" ${cartCubit.titleModel[index].count * product.price!.toInt()} \$"),
                date: '12/05',
                image: "${product.image}",
                index: index,
              );
            },
          );
  }
}
