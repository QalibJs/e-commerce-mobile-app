import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import 'order_box_bottom_widget.dart';
import 'order_box_top_widget.dart';

class OrderListTileWidget extends StatelessWidget {
  final String cost;
  final String date;
  final String image;
  final int index;
  const OrderListTileWidget({
    super.key,
    required this.cost,
    required this.date,
    required this.image,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPadding.lrt12().copyWith(left: 8, right: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          AppSizedBox.h5,
          OrderBoxTopWidget(
            cost: cost,
            date: date,
            index: index,
          ),
          OrderBoxBottomWidget(
            image: image,
            index: index,
          ),
          AppSizedBox.h5
        ],
      ),
    );
  }
}
