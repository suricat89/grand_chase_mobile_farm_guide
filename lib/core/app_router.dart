import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_page.dart';
import 'package:grand_chase_farm_guide/home/home_page.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_args.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_page.dart';
import 'package:grand_chase_farm_guide/likability_list/likability_list_page.dart';
import 'package:grand_chase_farm_guide/login/login_page.dart';
import 'package:grand_chase_farm_guide/shared/widgets/fade_route/fade_route.dart';
import 'package:grand_chase_farm_guide/splash/splash_page.dart';

class AppRouter {
  static Route<dynamic> getRouter(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashPage());
      case '/login':
        return FadeRoute(page: LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (context) => HomePage());
      case '/likability/list':
        return MaterialPageRoute(builder: (context) => LikabilityListPage());
      case '/likability/details':
        final args = settings.arguments as LikabilityDetailsArgs;
        return MaterialPageRoute(
          builder: (context) => LikabilityDetailsPage(
            selectedCharacterName: args.selectedCharacterName,
          ),
        );
      case '/adventure':
        return MaterialPageRoute(
          builder: (context) => AdventurePage(),
        );
      default:
        return MaterialPageRoute(builder: (context) => LoginPage());
    }
  }
}
