import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_config/app_config_notifier.dart';
import 'package:grand_chase_farm_guide/core/app_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppConfigNotifier>(
      create: (_) => new AppConfigNotifier(),
      child: AppWidget(),
    ),
  );
}
