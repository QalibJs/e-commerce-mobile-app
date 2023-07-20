import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/onboard/onboard_cubit.dart';
import 'back_button.dart';
import 'continue_or_finish_button.dart';

class BlocBuilderForButtonWidget extends StatelessWidget {
  final int index;
  const BlocBuilderForButtonWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ContinueOrFinishButton(
          isLast: index == 2,
          onContinue: () => context.read<OnboardCubit>().onContinue(),
        ),
        if (index != 0)
          BackButtonWidget(
            onPressed: () => context.read<OnboardCubit>().onBack(),
          ),
      ],
    );
  }
}
