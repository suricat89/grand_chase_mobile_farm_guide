import 'package:flutter/material.dart';

class CustomPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;
  CustomPersistentHeaderDelegate({
    required this.child,
    required this.height,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(CustomPersistentHeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
