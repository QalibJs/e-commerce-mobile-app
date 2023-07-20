import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../provider/favourite_provider.dart';
import '../../../provider/notification_provider.dart';
import '../../notification/widget/notification_widget.dart';
import '../widgets/product_app_bar_widget.dart';
import '../widgets/product_full_widget.dart';

class ProductScreen extends StatelessWidget {
  final String imageUrl;
  final String description;
  final String title;
  final String price;
  final int? index;
  final IconData icon;
  const ProductScreen({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.title,
    required this.price,
    this.index,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    FavouriteProvider favouriteProvider = context.watch<FavouriteProvider>();
    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        leading: BackButton(
          color: AppColors.blackColor,
        ),
        title: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is SuccessState) {
              final products = state.productModel;
              final productModel = products[index!];
              return ProductAppBarWidget(
                press: () {
                  favouriteProvider.selectItem(index!);
                  favouriteProvider.addToWishList(productModel);
                  notificationProvider.addNotifications(
                    const NotificationBoxWidget(notification: "İstək siyahısına bir element əlavə edildi"),
                  );
                },
                icon: Icon(
                  icon,
                  color: favouriteProvider.isSelected
                      ? AppColors.redColor
                      : AppColors.appBarColor,
                ),
                index: index!,
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height + 718,
          child: Column(
            children: [
              ProductFullWidget(
                imageUrl: imageUrl,
                price: price,
                title: title,
                description: description,
                index: index!,
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
