import 'package:flutter/material.dart';

import 'check_inputs_widget.dart';

class CheckFirstInputsWidget extends StatelessWidget {
  const CheckFirstInputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CheckInputsWidget(
          hintText: 'Qalib Alizade',
          text: 'Kartın Üzərindəki Ad',
          isCard: false,
        ),
        CheckInputsWidget(
          hintText: '**** **** **** ****',
          text: 'Kartın Nömrəsi',
          isCard: true,
        ),
      ],
    );
  }
}
