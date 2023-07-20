import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/payment_provider.dart';

class CheckBottomTextWidget extends StatelessWidget {
  const CheckBottomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentProvider paymentProvider = context.watch<PaymentProvider>();
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                paymentProvider.select();
              },
              child: Container(
                width: 26,
                margin: AppPadding.lr12(),
                height: 26,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: AppColors.blackColor,
                  ),
                ),
                child: paymentProvider.isSelected
                    ? const Icon(Icons.check_rounded)
                    : const SizedBox.shrink(),
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width - 74,
          height: 50,
          margin: AppPadding.lr12(),
          child: Text(
            "Mənim faktura ünvanım göndərmə ünvanımla eynidir.",
            style: AppTextStyle.costStyle(),
          ),
        )
      ],
    );
  }
}
