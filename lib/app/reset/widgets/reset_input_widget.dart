import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_text.dart';
import '../../../provider/reset_provider.dart';
import '../../../widgets/global/global_input_widget.dart';

class ResetInputWidget extends StatelessWidget {
  const ResetInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ResetProvider resetProvider = context.read<ResetProvider>();
    return Form(
      key: resetProvider.resetFormKey,
      child: GlobalInputWidget(
        isHome: false,
        controller: resetProvider.resetController,
        validator: (value) {
          if (value!.isEmpty) {
            return AppText.enterEmail;
          }
          return null;
        },
        isPassword: false,
        hintText: AppText.enterEmail,
        prefixIcon: const Icon(Icons.email),
      ),
    );
  }
}
