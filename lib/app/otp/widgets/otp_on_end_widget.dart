import 'package:flutter/material.dart';

import '../../../constants/app_text_style.dart';

// ignore: must_be_immutable
class OtpOnENdWidget extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var value;
   OtpOnENdWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${value.toInt()} seconds ",
      style: AppTextStyle.expiredStyle(),
    );
  }
}
