import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/products_model.dart';
import '../../../data/model/title_model.dart';
import '../../../provider/cart_provider.dart';
import '../../../provider/favourite_provider.dart';
import '../../../widgets/global/global_snacbar_widget.dart';
import 'favourite_list_tile_widget.dart';

class FavouriteListViewWidget extends StatelessWidget {
  const FavouriteListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<TitleModel> titleModel = TitleModel.titleModel;
    FavouriteProvider favouriteProvider = context.watch<FavouriteProvider>();
    CartProvider cartProvider = context.watch<CartProvider>();
    List<ProductModel> products = favouriteProvider.products;

    return favouriteProvider.products.isEmpty
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppSizedBox.h120,
              AppSizedBox.h20,
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.ord),
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
                      style: AppTextStyle.descriptionStyleB(),
                    ),
                    AppSizedBox.h10,
                    Text(
                      "Məhsullarımızla tanış olmaq üçün ana səhifəyə baxıb kateqoriyalara uyğun məhsulları izləyə bilərsiniz.",
                      textAlign: TextAlign.center,
                      style: AppTextStyle.costStyle(),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Container(
            color: AppColors.whiteColor,
            height: MediaQuery.of(context).size.height - 148,
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                TitleModel title = titleModel[index];
                final product = products[index];
                return FavouriteListTileWidget(
                  title: title.title,
                  price: "${product.price} \$",
                  prdctImage: product.image!,
                  minus: title.removeIcon,
                  bag: title.bag,
                  addBag: () {
                    cartProvider.addToWishList(product);
                    favouriteProvider.removeProduct(index);

                    GlobalSnackBarWidget().snackBar(
                        context, "Səbətə əlavə olundu", AppColors.greenColor);
                  },
                  remove: () {
                    favouriteProvider.removeProduct(index);

                    GlobalSnackBarWidget()
                        .snackBar(context, "Silindi", AppColors.redColor);
                  },
                );
              },
            ),
          );
  }
}
