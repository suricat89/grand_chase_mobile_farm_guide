import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/shared/util/character_util.dart';

class LikabilityDetailsHeaderWidget extends StatelessWidget {
  final VoidCallback onBackButtonTap;
  final VoidCallback onNextButtonTap;
  final String characterPicture;
  final String characterName;

  const LikabilityDetailsHeaderWidget({
    Key? key,
    required this.onBackButtonTap,
    required this.onNextButtonTap,
    required this.characterPicture,
    required this.characterName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: AppShadows.boxShadow02dp,
        color: Colors.white,
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: this.onBackButtonTap,
          ),
          Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(boxShadow: AppShadows.boxShadow02dp),
                    child: Image.asset(
                      this.characterPicture,
                      width: 48,
                      height: 48,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    this.characterName,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w600, fontSize: 48),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.chevron_right),
            onPressed: this.onNextButtonTap,
          )
        ],
      ),
    );
  }
}
