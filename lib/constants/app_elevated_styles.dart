import 'package:flutter/material.dart';

import 'app_colors.dart';

class ElevatedStyles {
  ElevatedStyles._();

  static ButtonStyle elevatedButtonStyle(Color color) =>
      ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: const Size(250, 55),
      );
  static ButtonStyle backButtonStyle() => ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      );
}
