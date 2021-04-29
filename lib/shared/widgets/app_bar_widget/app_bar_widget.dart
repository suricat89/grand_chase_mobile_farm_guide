import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_colors.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';

class AppBarWidget extends PreferredSize {
  final String title;
  AppBarWidget({required this.title})
      : super(
          preferredSize: Size.fromHeight(110),
          child: Container(
            height: 110,
            decoration: BoxDecoration(
              color: AppColors.appBarBackground,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: Colors.black26,
                ),
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 10,
                  color: Colors.black12,
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                SizedBox(width: 32),
                Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    style: TextStyles.appBarTitle,
                  ),
                ),
                Icon(
                  Icons.brightness_2,
                  color: Colors.white,
                )
              ],
            ),
          ),
        );
}
