import 'package:flutter/material.dart';

import '../../../constants/app_text.dart';

class HomeErrorWidget extends StatelessWidget {
  const HomeErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Text(AppText.error),
      ),
    );
  }
}
