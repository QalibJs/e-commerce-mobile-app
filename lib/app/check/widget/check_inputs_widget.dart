import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../constants/app_padding.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_style.dart';
import '../../../provider/payment_provider.dart';
import '../../../widgets/global/global_input_widget.dart';

class CheckInputsWidget extends StatelessWidget {
  final String text;
  final String hintText;
  final bool isCard;
  const CheckInputsWidget({
    Key? key,
    required this.text,
    required this.hintText,
    required this.isCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentProvider paymentProvider = context.read<PaymentProvider>();
    return Form(
      key: isCard ? paymentProvider.crdKey : paymentProvider.nameKey,
      child: Padding(
        padding: AppPadding.lr12(),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: AppTextStyle.costStyle(),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: GlobalInputWidget(
                controller: isCard? paymentProvider.crdNumCode : paymentProvider.crdName,
                inputType:
                    isCard ? TextInputType.number : TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return isCard ? "please fill all blank" : null;
                  } else if (value.length < 19) {
                    return isCard ? "please write correctly" : null;
                  }
                  return null;
                },
                maxLength: isCard ? 19 : null,
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: isCard ? "#### #### #### ####" : null)
                ],
                hintText: hintText,
                isHome: true,
                isPassword: false,
              ),
            ),
            AppSizedBox.h15,
          ],
        ),
      ),
    );
  }
}
