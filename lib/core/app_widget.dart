import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_page.dart';
// import 'package:grand_chase_farm_guide/likability_list/likability_list_page.dart';
// import 'package:grand_chase_farm_guide/home/home_page.dart';
// import 'package:grand_chase_farm_guide/login/login_page.dart';
// import 'package:grand_chase_farm_guide/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GrandChase Farm Guide",
      home: LikabilityDetailsPage(),
    );
  }
}
