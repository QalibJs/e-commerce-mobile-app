import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/order_top_model.dart';
import '../../../provider/order_provider.dart';

class OrderTopWidget extends StatelessWidget {
  const OrderTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<OrderTopModel> orderTopModel = OrderTopModel.orderTopModels;
    OrderProvider orderProvider = context.watch<OrderProvider>();
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      color: AppColors.blackColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: orderTopModel.length,
        itemBuilder: (context, index) {
          final categories = orderTopModel[index];
          return Center(
            child: GestureDetector(
              onTap: () {
                orderProvider.selectCategory(index);
                orderProvider.controller.jumpToPage(index);
              },
              child: Container(
                margin: AppPadding.lrt18().copyWith(top: 0),
                child: Text(
                  categories.title,
                  style: orderProvider.currentIndex == index
                      ? AppTextStyle.selectetOrderCategories()
                      : AppTextStyle.orderCategories(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
