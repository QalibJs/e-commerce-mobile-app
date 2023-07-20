import 'package:flutter/material.dart';

import '../../../constants/app_text.dart';
import '../../../widgets/global/global_input_widget.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: GlobalInputWidget(
        isHome: false,
        hintText: AppText.search,
        isPassword: false,
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}
