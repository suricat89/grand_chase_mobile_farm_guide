import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_drawer_widget/app_drawer_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_model.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ImageCardModel> homePageItems = [
    ImageCardModel(
      imageAssetPath: AppImages.cardLikability,
      width: double.maxFinite,
      height: 196,
      title: "Missões de afinidade",
      textStyle: TextStyles.homePageCards,
      nextPageRoute: '/likability/list',
    ),
    ImageCardModel(
      imageAssetPath: AppImages.cardAdventure,
      width: double.maxFinite,
      height: 196,
      title: "Missões de aventura",
      textStyle: TextStyles.homePageCards,
      nextPageRoute: '/adventure',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Página Inicial"),
      drawer: AppDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) => ImageCardWidget(
            imageAssetPath: homePageItems[index].imageAssetPath,
            width: homePageItems[index].width,
            height: homePageItems[index].height,
            title: homePageItems[index].title,
            textStyle: homePageItems[index].textStyle,
            onTap: () {
              Navigator.pushNamed(context, homePageItems[index].nextPageRoute);
            },
          ),
          separatorBuilder: (context, index) => SizedBox(height: 15),
          itemCount: homePageItems.length,
        ),
      ),
    );
  }
}
