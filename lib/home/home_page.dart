import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_model.dart';
import 'package:grand_chase_farm_guide/home/home_page_repository.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ImageCardModel> homePageItems = HomePageRepository.homePageItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Página Inicial"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemBuilder: (context, index) => homePageItems[index].imageCardWidget,
          separatorBuilder: (context, index) => SizedBox(height: 15),
          itemCount: homePageItems.length,
        ),
      ),
    );
  }
}
