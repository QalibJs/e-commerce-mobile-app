import 'package:flutter/material.dart';

import '../../constants/app_elevated_styles.dart';
import '../../constants/app_text_style.dart';

class GlobalButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  const GlobalButtonWidget({
    Key? key,
    this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed!(),
      style: ElevatedStyles.elevatedButtonStyle(color!),
      child: Text(
        text,
        style: AppTextStyle.shopNow(),
      ),
    );
  }
}
