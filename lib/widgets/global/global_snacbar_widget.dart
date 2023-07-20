import 'package:flutter/material.dart';

class GlobalSnackBarWidget {
  void snackBar(context, String text, Color color) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: color,
          behavior: SnackBarBehavior.floating,
          content: SizedBox(
            height: 15,
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      );  
}
