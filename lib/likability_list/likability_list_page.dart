import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/likability_list/likability_list_repository.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_model.dart';

class LikabilityListPage extends StatelessWidget {
  const LikabilityListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ImageCardModel> likabilityCharacters =
        LikabilityListRepository.likabilityCharacters;

    double deviceWidth = MediaQuery.of(context).size.width;
    const double pagePadding = 20;
    const double gridSpacing = 10;
    int gridHorizontalSize = ((deviceWidth - (pagePadding * 2)) /
            (LikabilityListRepository.cardSize + gridSpacing))
        .truncate();

    return Scaffold(
      appBar: AppBarWidget(title: "Afinidade"),
      body: Padding(
        padding: const EdgeInsets.all(pagePadding),
        child: GridView.count(
            crossAxisCount: gridHorizontalSize,
            crossAxisSpacing: gridSpacing,
            mainAxisSpacing: gridSpacing,
            children: likabilityCharacters
                .map((e) => Center(child: e.imageCardWidget))
                .toList()),
      ),
    );
  }
}
