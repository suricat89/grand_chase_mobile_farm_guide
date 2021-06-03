import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_router.dart';
import 'package:grand_chase_farm_guide/core/app_config/app_config_notifier.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppConfigNotifier>(
      builder: (consumerContext, appConfig, _) => MaterialApp(
        title: 'GrandChase Farm Guide',
        theme: appConfig.selectedTheme,
        initialRoute: '/',
        onGenerateRoute: AppRouter.getRouter,
      ),
    );
  }
}
