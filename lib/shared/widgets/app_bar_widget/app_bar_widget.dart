import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/core/app_theme/theme_notifier.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_button_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_drawer_widget/app_drawer_widget.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    required title,
  }) : super(
          title: Text(title, style: TextStyles.appBarTitle),
          elevation: 2,
          actions: [
            Consumer<ThemeNotifier>(
              builder: (context, themeNotifier, _) => AppBarButtonWidget(
                icon: Icon(
                  Icons.brightness_2,
                  color: Colors.white,
                ),
                tooltip: "Modo escuro",
                onPressed: () {
                  themeNotifier.toggleMode();
                },
              ),
            )
          ],
        );
}
