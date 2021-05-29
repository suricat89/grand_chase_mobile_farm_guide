import 'package:flutter/material.dart';

class AppBarButtonWidget extends StatelessWidget {
  final Icon icon;
  final String tooltip;
  final VoidCallback onPressed;
  const AppBarButtonWidget({
    Key? key,
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      alignment: Alignment.center,
      iconSize: 24,
      constraints: BoxConstraints(maxHeight: 24, maxWidth: 24),
      padding: const EdgeInsets.all(0),
      tooltip: tooltip,
      splashRadius: 24,
    );
  }
}
