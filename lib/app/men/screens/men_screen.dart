import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../shopping/widgets/shopping_cashback_widget.dart';
import '../../shopping/widgets/shopping_top_widgets.dart';
import '../widget/men_grid_view_builder.dart';
import '../widget/men_top_widget.dart';

class MenScreen extends StatelessWidget {
  final bool isHome;
  const MenScreen({
    Key? key,
    required this.isHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: isHome
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: AppColors.greyBlue,
              centerTitle: true,
              title: const Text(
                "Men's fashion",
              ),
            ),
      body: isHome
          ? Column(
              children: [
                isHome
                    ? const SizedBox.shrink()
                    : const ShoppingTopWidgets(
                        isShopping: false,
                      ),
                AppSizedBox.h30,
                const MenTopWidget(
                  isMen: true,
                ),
                AppSizedBox.h50,
                const MenGridViewBuilder(
                  length: 8,
                  isFirst: true,
                ),
                isHome ? AppSizedBox.h30 : AppSizedBox.h5,
                const ShoppingCashBackWidget(),
                isHome ? AppSizedBox.h30 : AppSizedBox.h15,
                const MenGridViewBuilder(
                  length: 6,
                  isFirst: false,
                ),
              ],
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  isHome
                      ? const SizedBox.shrink()
                      : const ShoppingTopWidgets(
                          isShopping: false,
                        ),
                  AppSizedBox.h30,
                  const MenTopWidget(
                    isMen: true,
                  ),
                  AppSizedBox.h50,
                  const MenGridViewBuilder(
                    length: 8,
                    isFirst: true,
                  ),
                  const ShoppingCashBackWidget(),
                  AppSizedBox.h15,
                  const MenGridViewBuilder(
                    length: 6,
                    isFirst: false,
                  ),
                ],
              ),
            ),
    );
  }
}
