import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_text.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/payment_provider.dart';
import '../../../widgets/global/global_input_widget.dart';

class CheckExpCvvWidget extends StatelessWidget {
  final bool isExp;
  const CheckExpCvvWidget({super.key, required this.isExp});

  @override
  Widget build(BuildContext context) {
    PaymentProvider paymentProvider = context.read<PaymentProvider>();
    return Form(
      key: isExp ? paymentProvider.expKey : paymentProvider.cvvKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPadding.lr12().copyWith(right: 0),
            child: Text(
              isExp ? "İstifadə müddəti" : "Təhlükəsizlik kodu",
              style: AppTextStyle.costStyle(),
            ),
          ),
          Container(
            margin: AppPadding.lr12(),
            width: MediaQuery.of(context).size.width / 2 - 24,
            height: 90,
            child: GlobalInputWidget(
              controller:
                  isExp ? paymentProvider.expCode : paymentProvider.cvvCode,
              isHome: true,
              validator: (value) {
                if (value!.length < 3) {
                  return isExp ? "write correct exp!" : "write correct cvv!";
                } else if (value.isEmpty) {
                  return isExp ? "fill all blanks" : "fill all blanks";
                }
                return null;
              },
              inputFormatters: [
                MaskTextInputFormatter(
                  mask: isExp ? "##/##" : "###",
                )
              ],
              inputType: TextInputType.number,
              maxLength: isExp ? 5 : 3,
              hintText: isExp ? AppText.exp : AppText.cardCVV,
              isPassword: false,
              prefixIcon: const Icon(
                Icons.password,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
