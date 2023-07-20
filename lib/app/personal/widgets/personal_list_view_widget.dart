import 'package:flutter/material.dart';

import '../../../data/model/personal_model.dart';
import 'personal_list_tile_widget.dart';

class PersonalListViewWidget extends StatelessWidget {
  const PersonalListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<PersonalModel> personalModels = PersonalModel.personalModel;
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: personalModels.length,
        itemBuilder: (context, index) {
          final personalDatas = personalModels[index];
          return PersonalListTileWidget(
            topText: personalDatas.topText,
            appDescription: personalDatas.appDescription,
            profileImage: personalDatas.profileImage,
            userDescription: personalDatas.userDescription,
          );
        },
      ),
    );
  }
}
