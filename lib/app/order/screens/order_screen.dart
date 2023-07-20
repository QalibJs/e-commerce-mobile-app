import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../../../data/model/order_model.dart';
import '../../../provider/order_provider.dart';
import '../widgets/order_empty_widgets.dart';
import '../widgets/order_list_view_widget.dart';
import '../widgets/order_top_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OrderProvider orderProvider = context.watch<OrderProvider>();
    List<OrderModel> orderModel = OrderModel.orderModel;
    return Scaffold(
      backgroundColor: AppColors.darkGreyColor2,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor,
        title: Text(
          "Sifarişlərim",
          style: AppTextStyle.whiteText2(),
        ),
      ),
      body: Column(
        children: [
          const OrderTopWidget(),
          Expanded(
            child: SizedBox(
              child: PageView(
                controller: orderProvider.controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const OrderListViewWidget(),
                  OrderEmptyWidgets(
                    top: 'Xüsusilə ikinci əl sifariş etməmisinizsə',
                    bottom: 'sevdiyiniz markaları yarı qiymətə kəşf edin',
                    image: orderModel[0].image,
                  ),
                  OrderEmptyWidgets(
                    top: 'Dijital Servislər Hal hazırda boşdur',
                    bottom: 'Bu servis yaxın zamanda xidmətinizdə olacaq',
                    image: orderModel[1].image,
                  ),
                  OrderEmptyWidgets(
                    top: 'Siz hələki bazarına sifariş verməmisiniz',
                    bottom:
                        'Bazar qiymətinə 30 dəqiqə ərzində qapınıza çatdırılacaq məhsullar üçün elə indi sifariş edin',
                    image: orderModel[2].image,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
