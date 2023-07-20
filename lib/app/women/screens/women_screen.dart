import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../men/widget/men_top_widget.dart';
import '../../shopping/widgets/shopping_cashback_widget.dart';
import '../../shopping/widgets/shopping_top_widgets.dart';
import '../widgets/women_grid_view_builder.dart';

class WomenScreen extends StatelessWidget {
  final bool isHome;
  const WomenScreen({super.key, required this.isHome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isHome
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: AppColors.greyBlue,
              centerTitle: true,
              title: const Text("Women's Fashion"),
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
                  isMen: false,
                ),
                AppSizedBox.h30,
                const WomenGridViewWidget(
                  isFirst: true,
                  length: 8,
                ),
                AppSizedBox.h10,
                const ShoppingCashBackWidget(),
                AppSizedBox.h15,
                const WomenGridViewWidget(
                  isFirst: false,
                  length: 6,
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
                    isMen: false,
                  ),
                  AppSizedBox.h30,
                  const WomenGridViewWidget(
                    isFirst: true,
                    length: 8,
                  ),
                  AppSizedBox.h10,
                  const ShoppingCashBackWidget(),
                  AppSizedBox.h15,
                  const WomenGridViewWidget(
                    isFirst: false,
                    length: 6,
                  ),
                ],
              ),
            ),
    );
  }
}
