import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/payment_provider.dart';

class PaymentSecondBox extends StatelessWidget {
  final bool isThirdBox;
  final int? subtotal;
  final int? delivery;

  const PaymentSecondBox({
    super.key,
    required this.isThirdBox,
    this.subtotal,
    this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    PaymentProvider paymenProvider = context.read<PaymentProvider>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: isThirdBox ? 190 : 160,
      margin: AppPadding.lr12(),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: AppColors.greyBlue,
        ),
      ),
      child: Column(
        children: [
          AppSizedBox.h20,
          Row(
            children: [
              AppSizedBox.w15,
              Text(
                isThirdBox ? AppText.orderSummary : AppText.shpaddress,
                style: AppTextStyle.costStyle(),
              ),
              const Spacer(),
              Padding(
                padding: AppPadding.lr12().copyWith(left: 0),
                child: Text(
                  AppText.edit,
                  style: AppTextStyle.editStyle(),
                ),
              )
            ],
          ),
          AppSizedBox.h30,
          Row(
            children: [
              AppSizedBox.w15,
              Text(
                isThirdBox ? AppText.subtotal : AppText.name,
                style: AppTextStyle.costStyle(),
              ),
              const Spacer(),
              Padding(
                padding: AppPadding.lr12().copyWith(left: 0),
                child: Text(
                  isThirdBox
                      ? "$subtotal \$"
                      : paymenProvider.crdName.text.trim(),
                  style: AppTextStyle.orderNameStyle(),
                ),
              )
            ],
          ),
          AppSizedBox.h15,
          Row(
            children: [
              AppSizedBox.w15,
              Text(
                isThirdBox ? AppText.delivery : AppText.street,
                style: AppTextStyle.costStyle(),
              ),
              const Spacer(),
              Padding(
                padding: AppPadding.lr12().copyWith(left: 0),
                child: Text(
                  isThirdBox ? "${delivery!} \$" : "1313 Wolf Crind",
                  style: AppTextStyle.orderNameStyle(),
                ),
              )
            ],
          ),
          AppSizedBox.h15,
          isThirdBox
              ? Row(
                  children: [
                    AppSizedBox.w15,
                    Text(
                      AppText.total,
                      style: AppTextStyle.costStyle(),
                    ),
                    const Spacer(),
                    Padding(
                      padding: AppPadding.lr12().copyWith(left: 0),
                      child: Text(
                        "${subtotal! + delivery!} \$",
                        style: AppTextStyle.costStyle(),
                      ),
                    )
                  ],
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
