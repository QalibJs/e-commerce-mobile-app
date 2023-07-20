import 'package:flutter/cupertino.dart';

import '../../../data/model/women_category_model.dart';
import '../../men/widget/men_grid_list_tile_widget.dart';

class WomenGridViewWidget extends StatelessWidget {
  final int length;
  final bool isFirst;
  const WomenGridViewWidget({
    super.key,
    required this.length,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    List<WomenCategoryModel> womenCategoryModel =
        WomenCategoryModel.womenCategoryModel;
    return SizedBox(
      height: isFirst ? 1450 : 1053,
      child: GridView.builder(
        itemCount: length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          childAspectRatio: 0.62,
        ),
        itemBuilder: (context, index) {
          final women = womenCategoryModel[index];
          return ListGridListTileWidget(
            image: women.image,
            price: women.price,
            title: women.title,
            rate: women.rate,
          );
        },
      ),
    );
  }
}
