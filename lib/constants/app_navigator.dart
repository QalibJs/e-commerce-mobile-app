import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  static go(context, Widget screen) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ),
      );

  static pop(context) => Navigator.pop(
        context,
      );
}
