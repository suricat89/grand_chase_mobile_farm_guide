import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  final Duration transitionDuration;
  FadeRoute({
    required this.page,
    this.transitionDuration: const Duration(milliseconds: 800),
  }) : super(
          pageBuilder: (_, __, ___) => page,
          transitionDuration: transitionDuration,
          transitionsBuilder: (_, animation, __, child) =>
              FadeTransition(opacity: animation, child: child),
        );
}
