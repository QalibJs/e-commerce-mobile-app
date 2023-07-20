import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_sized_box.dart';
import '../../../provider/shopping_provider.dart';
import '../../men/screens/men_screen.dart';
import '../../women/screens/women_screen.dart';
import 'shopping_categories_widget.dart';
import 'shopping_cotegory_list_view_widget.dart';
import 'shopping_discount_widget.dart';
import 'shopping_product_widget.dart';
import 'shopping_top_text_widget.dart';
import 'shopping_top_widgets.dart';

class ShoppingPrimaryWidget extends StatelessWidget {
  final void Function()? onPressed;
  const ShoppingPrimaryWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShoppingProvider shoppingProvider = context.watch<ShoppingProvider>();
    return SingleChildScrollView(
      child: Column(
        children: [
          ShoppingTopWidgets(
            onPressed: onPressed,
            isShopping: true,
          ),
          AppSizedBox.h20,
          const ShoppingTopTextWidget(),
          AppSizedBox.h30,
          const ShoppingDiscountWidget(),
          AppSizedBox.h15,
          const ShoppingCategoriesWidget(),
          AppSizedBox.h15,
          const ShoppingCategoryListViewWidget(),
          AppSizedBox.h30,
          SizedBox(
            height: MediaQuery.of(context).size.height + 2030,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: shoppingProvider.controller,
              children:  [
                const ShoppingProductWidget(),
                const MenScreen(isHome: true,),
                Container(),
                const WomenScreen(isHome: true,),
                Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
