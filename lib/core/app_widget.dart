import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_theme/theme_notifier.dart';
import 'package:grand_chase_farm_guide/splash/splash_page.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (consumerContext, theme, _) => MaterialApp(
        title: "GrandChase Farm Guide",
        theme: theme.selectedTheme,
        home: SplashPage(),
      ),
    );
  }
}
