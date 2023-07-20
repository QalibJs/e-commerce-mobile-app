import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_padding.dart';
import '../../../cubit/search/search_cubit.dart';

class ShoppingSearchBox extends StatelessWidget {
  const ShoppingSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SearchCubit searchCubit = context.read<SearchCubit>();
    return GestureDetector(
      onTap: () {
        searchCubit.openInput();
      },
      child: Container(
              margin: AppPadding.lrt12(),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.greyBlue,
              ),
              child: const Icon(
                Icons.search_outlined,
                size: 27,
              ),
            ),
    );
  }
}
