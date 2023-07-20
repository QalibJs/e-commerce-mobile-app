import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/products/product_cubit.dart';
import '../../../cubit/products/product_cubit_state.dart';
import '../../../widgets/global/global_indicator_widget.dart';
import '../../category/widget/category_widget.dart';
import '../../home/widgets/home_error_widget.dart';
import '../widgets/shopping_primary_widget.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> globalkey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        drawer: const CategoryWidget(),
        key: globalkey,
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const GlobalIndicatorWidget();
            } else if (state is SuccessState) {
              return ShoppingPrimaryWidget(
                onPressed: () {
                  globalkey.currentState!.openDrawer();
                },
              );
            } else if (state is ErrorState) {
              return const HomeErrorWidget();
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
