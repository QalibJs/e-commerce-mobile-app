import 'package:flutter/widgets.dart';

import '../../../constants/app_sized_box.dart';
import '../../shopping/widgets/shopping_best_sale_widget.dart';
import '../../shopping/widgets/shopping_most_popular_widget.dart';
import 'product_button_widget.dart';
import 'product_description_widget.dart';
import 'product_image_widget.dart';
import 'product_price_wigdet.dart';
import 'product_size_model.dart';
import 'product_title_widget.dart';

class ProductFullWidget extends StatelessWidget {
  final String imageUrl;
  final String price;
  final String title;
  final String description;
  final int index;
  const ProductFullWidget(
      {super.key,
      required this.imageUrl,
      required this.price,
      required this.title,
      required this.description,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizedBox.h30,
        SizedBox(
          height: 671,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ProductImageWidget(
                imageUrl: imageUrl,
              ),
              AppSizedBox.h20,
              ProductTitleWidget(
                title: title,
              ),
              AppSizedBox.h15,
              ProductPriceWidget(
                price: price,
                index: index,
              ),
              AppSizedBox.h20,
              const ProductSizeModel(),
              AppSizedBox.h20,
              Productdescription(
                description: description,
              ),
            ],
          ),
        ),
        AppSizedBox.h20,
        ProductButtonWidget(
          index: index,
        ),
        AppSizedBox.h30,
        const ShoppingBestSaleWidget(),
        const ShoppingMostPopular(),
      ],
    );
  }
}
