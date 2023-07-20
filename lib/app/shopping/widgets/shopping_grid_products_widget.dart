import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../data/model/products_model.dart';
import '../../../data/model/title_model.dart';
import '../../../provider/cart_provider.dart';
import '../../../provider/favourite_provider.dart';
import '../../../provider/notification_provider.dart';
import '../../../widgets/global/global_snacbar_widget.dart';
import '../../notification/widget/notification_widget.dart';
import '../../product/screens/product_screen.dart';

class ShoppingGridPoductsWidget extends StatelessWidget {
  const ShoppingGridPoductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<TitleModel> titleModel = TitleModel.titleModel;
    FavouriteProvider favouriteProvider = context.watch<FavouriteProvider>();
    CartProvider cartProvider =
        Provider.of<CartProvider>(context, listen: false);
    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is SuccessState) {
          List<ProductModel> products = state.productModel;
          return SizedBox(
            height: 650,
            child: GridView.builder(
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 25,
                childAspectRatio: 0.67,
              ),
              itemBuilder: (context, index) {
                ProductModel product = products[index];
                final title = titleModel[index];
                return GestureDetector(
                  onTap: () {
                    // favouriteProvider.selectItem(index);
                    AppNavigator.go(
                      context,
                      ProductScreen(
                        description: product.description!,
                        imageUrl: product.image!,
                        price: "${product.price}",
                        title: product.title!,
                        index: index,
                        icon: favouriteProvider.titlemodels[index].favIcon,
                      ),
                    );
                  },
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
                          child: Hero(
                            tag: product.image!,
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    product.image!,
                                  ),
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
                              "${product.price?.toStringAsFixed(0)} \$",
                              style: AppTextStyle.cartTitle(),
                            ),
                            const Spacer(),
                            Padding(
                              padding: AppPadding.lr6().copyWith(left: 0),
                              child: GestureDetector(
                                onTap: () {
                                  cartProvider.addToCart(product);
                                  notificationProvider.addNotifications(
                                    const NotificationBoxWidget(
                                      notification: 'Bir element səbətə əlavə edildi',
                                    ),
                                  );
                                  GlobalSnackBarWidget().snackBar(
                                    context,
                                    AppText.addToCart,
                                    AppColors.greenColor,
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
        return const SizedBox.shrink();
      },
    );
  }
}
