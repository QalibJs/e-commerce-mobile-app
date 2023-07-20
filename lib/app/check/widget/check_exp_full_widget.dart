import 'package:flutter/material.dart';

import 'check_exp_cvv_widget.dart';

class CheckExpFullWidget extends StatelessWidget {
  const CheckExpFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CheckExpCvvWidget(
          isExp: true,
        ),
        Spacer(),
        CheckExpCvvWidget(
          isExp: false,
        )
      ],
    );
  }
}
