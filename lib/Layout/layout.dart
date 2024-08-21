import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout(
      {super.key,
      required this.desktopLayout,
      required this.tabLayout,
      required this.mobileLayout});
  final Widget desktopLayout;
  final Widget tabLayout;
  final Widget mobileLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 768) {
        return desktopLayout;
      } else if (constraint.maxWidth > 480) {
        return tabLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
