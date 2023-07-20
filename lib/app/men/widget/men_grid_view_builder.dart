import 'package:flutter/material.dart';

import '../../../data/model/men_clothes_category_model.dart';
import 'men_grid_list_tile_widget.dart';

class MenGridViewBuilder extends StatelessWidget {
  final int length;
  final bool isFirst;
  const MenGridViewBuilder({
    super.key,
    required this.length,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    List<MensClothesCategoryModel> mensClothesCategoryModel =
        MensClothesCategoryModel.womensClothes;
    return SizedBox(
      height: isFirst ? 1345 : 1100,
      child: GridView.builder(
        itemCount: length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          final men = mensClothesCategoryModel[index];
          return ListGridListTileWidget(
            image: men.menImage,
            price: men.price,
            title: men.title,
            rate: men.rate,
          );
        },
      ),
    );
  }
}
