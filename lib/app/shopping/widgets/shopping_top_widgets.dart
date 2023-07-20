import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../provider/notification_provider.dart';
import '../../../widgets/global/global_input_widget.dart';
import '../../cart/screen/cart_screen.dart';
import '../../notification/screen/notification_screen.dart';
import 'shopping_cart_box.dart';

class ShoppingTopWidgets extends StatelessWidget {
  final void Function()? onPressed;
  final bool isShopping;
  const ShoppingTopWidgets(
      {super.key, this.onPressed, required this.isShopping});

  @override
  Widget build(BuildContext context) {
    NotificationProvider notificationProvider =
        context.watch<NotificationProvider>();
    return Row(
      children: [
        isShopping
            ? Padding(
                padding: AppPadding.lr6().copyWith(right: 4, top: 6),
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: onPressed,
                ))
            : const SizedBox.shrink(),
        Padding(
          padding: AppPadding.lr6().copyWith(right: 0),
          child: SizedBox(
            width: isShopping ? 196 : 266,
            height: 70,
            child: const GlobalInputWidget(
              isHome: true,
              hintText: "Axtarış",
              isPassword: false,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            AppNavigator.go(context, const CartScreen());
          },
          child: const ShoppingCartBox(),
        ),
        AppSizedBox.w5,
        GestureDetector(
          onTap: () {
            AppNavigator.go(context, const NotificationScreen());
          },
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: AppColors.simplewGreyColor,
                borderRadius: BorderRadius.circular(50)),
            margin: AppPadding.lr6().copyWith(top: 6),
            child: Stack(
              children: [
                Center(
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 27,
                    color: AppColors.blackColor,
                  ),
                ),
                notificationProvider.notifications.isEmpty
                    ? const SizedBox.shrink()
                    : Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.redColor,
                          ),
                          child: Center(
                            child: Text(
                              "${notificationProvider.notifications.length}",
                              style: TextStyle(
                                color: AppColors.blackColor,
                              ),
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
