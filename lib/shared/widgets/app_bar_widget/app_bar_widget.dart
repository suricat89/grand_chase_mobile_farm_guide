import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/core/app_theme/theme_notifier.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_button_widget.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends PreferredSize {
  static final double appBarHeight = 110;

  final BuildContext context;
  final String title;
  AppBarWidget({
    required this.context,
    required this.title,
  }) : super(
          preferredSize: Size.fromHeight(appBarHeight),
          child: Container(
            height: 110,
            decoration: BoxDecoration(
              boxShadow: AppShadows.boxShadow02dp,
            ),
            child: Material(
              color: Theme.of(context).appBarTheme.color,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppBarButtonWidget(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      tooltip: "Menu principal",
                      onPressed: () {},
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      flex: 1,
                      child: Text(
                        title,
                        style: TextStyles.appBarTitle,
                      ),
                    ),
                    Consumer<ThemeNotifier>(
                      builder: (context, themeNotifier, _) =>
                          AppBarButtonWidget(
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
                ),
              ),
            ),
          ),
        );
}
