import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_page.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_page.dart';
import 'package:grand_chase_farm_guide/likability_list/likability_list_repository.dart';

class AppDrawerWidget extends Drawer {
  const AppDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "GrandChase\nDimensional Chaser\n",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                            text: "Guia de farm",
                            style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 2,
                            ))
                      ]),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor),
          ),
          ExpansionTile(
            title: Text("Missões de afinidade"),
            children: LikabilityListRepository.likabilityCharacters
                .map(
                  (character) => ListTile(
                    title: Text(character.title),
                    contentPadding: const EdgeInsets.only(
                        top: 3, right: 0, bottom: 3, left: 50),
                    dense: true,
                    leading: Image.asset(
                      character.imageAssetPath,
                      fit: character.imageFit,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LikabilityDetailsPage(
                              selectedCharacterName: character.title),
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          ),
          ListTile(
            title: Text(
              "Missões de aventura",
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdventurePage(),
                  ));
            },
          ),
          ListTile(
            title: Text("Sair"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
