import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../data/model/title_model.dart';
import 'promotion_second_list_tile_widget.dart';

class PromotionSecondListViewWidget extends StatelessWidget {
  const PromotionSecondListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<TitleModel> titleModel = TitleModel.titleModel;

    return SizedBox(
      height: 105,
      width: MediaQuery.of(context).size.width,
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is SuccessState) {
            final product = state.productModel;
            return ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final titles = titleModel[index];
                final products = product[index];
                return PromotionSecondListTileWidget(
                  productImage: products.image!,
                  title: titles.title,
                  subtitle: titles.discount,
                  description: products.description!,
                  imageUrl: products.image!,
                  price: "${products.price}",
                  productTitle: products.title!,
                  index: index,
                  icon: titles.favIcon,
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
