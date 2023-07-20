import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../widgets/flash_sale_add_widget.dart';
import '../widgets/flash_sale_ends_in_widget.dart';
import '../widgets/flash_sale_list_view_widget.dart';

class FlashSalesScreen extends StatelessWidget {
  const FlashSalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBlueColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackBlueColor,
        centerTitle: true,
        title: Text(AppText.flashSale),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const FlashSalesAddWidget(),
              const FlashSaleEndsInWidget(),
              AppSizedBox.h15,
              const FlashSaleListViewWidget()
              
            ],
          ),
        ),
      ),
    );
  }
}
