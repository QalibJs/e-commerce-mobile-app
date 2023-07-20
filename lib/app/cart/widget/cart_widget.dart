import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../extensions/device_size.dart';
import '../../../provider/cart_provider.dart';
import '../../../provider/notification_provider.dart';
import '../../../widgets/global/global_snacbar_widget.dart';
import '../../notification/widget/notification_widget.dart';
import 'cart_counter_with_description.dart';
import 'cart_product_image_widget.dart';

class CartWidget extends StatelessWidget {
  final int? index;
  final String productImage;
  final String title;
  final String description;
  final String price;
  const CartWidget({
    Key? key,
    this.index,
    required this.productImage,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider =
        Provider.of<CartProvider>(context, listen: false);
    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();
    return Container(
      margin: AppPadding.lrt12(),
      width: context.deviceWidth,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.cartColor,
      ),
      child: Row(
        children: [
          AppSizedBox.w10,
          Expanded(
            flex: 2,
            child: CartProductImageWidget(
              productImage: productImage,
            ),
          ),
          AppSizedBox.w10,
          Expanded(
            flex: 5,
            child: CartCounterWithDescription(
              description: description,
              price: price,
              title: title,
              index: index!,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              cartProvider.removeProduct(index!);
              notificationProvider.addNotifications(
                const NotificationBoxWidget(
                  notification: "Bir element səbətdən çıxarıldı",
                ),
              );
              GlobalSnackBarWidget().snackBar(
                context,
                AppText.removedItem,
                AppColors.redColor,
              );
            },
            child: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          AppSizedBox.w10,
        ],
      ),
    );
  }
}
