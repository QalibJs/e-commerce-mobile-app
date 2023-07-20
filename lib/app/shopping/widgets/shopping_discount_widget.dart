import 'package:flutter/material.dart';

import '../../../data/model/discount_model.dart';
import 'shopping_list_tile_widget.dart';

class ShoppingDiscountWidget extends StatelessWidget {
  const ShoppingDiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<DiscountModel> discountModel = DiscountModel.discountModel;
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          final discountList = discountModel[index];
          return  ShoppingListTileWidget(
            color: discountList.color,
            dicountText:discountList.discountText,
            image: discountList.discountImage,
          );
        },
      ),
    );
  }
}
