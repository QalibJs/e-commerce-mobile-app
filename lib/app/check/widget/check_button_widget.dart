import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Widgets/global/global_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigator.dart';
import '../../../constants/app_padding.dart';
import '../../../provider/payment_provider.dart';
import '../../payment/screens/payment_screen.dart';

class CheckbuttonWidget extends StatelessWidget {
  const CheckbuttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentProvider paymentProvider = context.read<PaymentProvider>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: AppPadding.lr12(),
      child: GlobalButtonWidget(
        text: "Təsdiqlə Və Dəvam et  >",
        color: AppColors.blackColor,
        onPressed: () {
          if (paymentProvider.crdKey.currentState!.validate() &&
              paymentProvider.nameKey.currentState!.validate() &&
              paymentProvider.cvvKey.currentState!.validate() &&
              paymentProvider.expKey.currentState!.validate()) {
            AppNavigator.go(context, const PaymentScreen());
          }
        },
      ),
    );
  }
}
