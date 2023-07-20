import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../cubit/cart/cart_cubit.dart';
import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../data/model/products_model.dart';
import '../../../provider/cart_provider.dart';
import '../../check/widget/check_top_widgett.dart';
import '../widget/payment_button_widget.dart';
import '../widget/payment_first_box_widget.dart';
import '../widget/payment_second_box_widget.dart';
import '../widget/payment_top_texts_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CartCubit cartCubit = context.read<CartCubit>();
    CartProvider cartProvider = context.watch<CartProvider>();
    List<ProductModel> productModel = cartProvider.products;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.blackColor,
        title: Text(AppText.check),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is SuccessState) {
            final products = state.productModel;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                final product = products[index];
                final productaa = productModel[index];
                return SizedBox(
                  height: 790,
                  child: Column(
                    children: [
                      const CheckTopWidget(
                        isShipping: false,
                      ),
                      const PaymentTopText(),
                      AppSizedBox.h30,
                      const PaymentFirstBoxWidget(),
                      AppSizedBox.h10,
                      const PaymentSecondBox(
                        isThirdBox: false,
                      ),
                      AppSizedBox.h30,
                      PaymentSecondBox(
                        isThirdBox: true,
                        delivery: 10,
                        subtotal: (cartCubit.titleModel[index].count *
                            productaa.price!.toInt()),
                      ),
                      AppSizedBox.h10,
                      PaymentButtonWidget(product: product)
                    ],
                  ),
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
