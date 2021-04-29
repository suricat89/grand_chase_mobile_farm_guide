import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle splashPageTitle = GoogleFonts.roboto(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Colors.black26,
        offset: Offset(2, 4),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(1, 1),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(-1, -1),
      ),
    ],
    decoration: TextDecoration.none,
    color: Colors.white,
  );

  static TextStyle splashPageSubtitle = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Colors.black26,
        offset: Offset(2, 4),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(1, 1),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(-1, -1),
      ),
    ],
    decoration: TextDecoration.none,
    color: Colors.white,
  );

  static TextStyle loginPageHeader = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    shadows: [
      Shadow(
        blurRadius: 4.0,
        color: Colors.black26,
        offset: Offset(2, 4),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(1, 1),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(-1, -1),
      ),
    ],
    decoration: TextDecoration.none,
    color: Colors.white,
  );

  static TextStyle loginPageSocialMediaDescription = GoogleFonts.roboto(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
  );

  static TextStyle appBarTitle = GoogleFonts.roboto(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  static TextStyle homePageCards = GoogleFonts.roboto(
    color: Color.fromRGBO(255, 255, 255, 0.87),
    fontWeight: FontWeight.w700,
    fontSize: 20,
    shadows: [
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(1, 1),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(-1, -1),
      ),
    ],
  );

  static TextStyle likabilityListCards = GoogleFonts.roboto(
    color: Color.fromRGBO(255, 255, 255, 0.87),
    fontWeight: FontWeight.w400,
    fontSize: 16,
    shadows: [
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(1, 1),
      ),
      Shadow(
        blurRadius: 2.0,
        color: Colors.black54,
        offset: Offset(-1, -1),
      ),
    ],
  );
}
