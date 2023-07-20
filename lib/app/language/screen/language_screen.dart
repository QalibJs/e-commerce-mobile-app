import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_text_style.dart';
import '../../../cubit/language/language_cubit.dart';
import '../../../data/model/language_model.dart';
import '../widget/language_list_tile_widget.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      await Future.delayed(const Duration(seconds: 1));
    }

    LanguageCubit languageCubit = context.read<LanguageCubit>();
    List<LanguageModel> languageModel = LanguageModel.languages;
    return Scaffold(
      backgroundColor: AppColors.simpleGreyColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dillər",
          style: AppTextStyle.whiteText2(),
        ),
      ),
      body: LiquidPullToRefresh(
        onRefresh: onRefresh,
        color: AppColors.whiteColor,
        backgroundColor: AppColors.appBarColor,
        springAnimationDurationInMilliseconds: 100,
        child: BlocBuilder<LanguageCubit, int>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: languageModel.length,
              itemBuilder: (context, index) {
                final languages = languageModel[index];
                return LanguageListTileWidget(
                  onTap: () {
                    languageCubit.changeLanguage(index);
                  },
                  language: languages.language,
                  flag: languages.flag,
                  color: languageCubit.currentIndex == index
                      ? AppColors.greyBlue
                      : AppColors.whiteColor,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
