import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_theme/theme_notifier.dart';
import 'package:grand_chase_farm_guide/core/app_widget.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => new ThemeNotifier(),
      child: AppWidget(),
    ),
  );
}
