import 'package:flutter/material.dart';

class AppShadows {
  static List<BoxShadow> boxShadow02dp = [
    BoxShadow(
      offset: Offset(0, 2),
      blurRadius: 2,
      color: Color.fromRGBO(0, 0, 0, 0.14),
    ),
    BoxShadow(
      offset: Offset(0, 3),
      blurRadius: 1,
      color: Color.fromRGBO(0, 0, 0, 0.12),
    ),
    BoxShadow(
      offset: Offset(0, 1),
      blurRadius: 5,
      color: Color.fromRGBO(0, 0, 0, 0.2),
    ),
  ];

  static List<BoxShadow> boxShadow04dp = [
    BoxShadow(
      offset: Offset(0, 2),
      blurRadius: 4,
      color: Color.fromRGBO(0, 0, 0, 0.14),
    ),
    BoxShadow(
      offset: Offset(0, 1),
      blurRadius: 10,
      color: Color.fromRGBO(0, 0, 0, 0.12),
    ),
    BoxShadow(
      offset: Offset(0, 2),
      blurRadius: 4,
      color: Color.fromRGBO(0, 0, 0, 0.2),
    ),
  ];
}
