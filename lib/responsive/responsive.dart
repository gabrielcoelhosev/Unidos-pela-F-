import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget cellBody;
  final Widget desktopBodyC;

  const ResponsiveLayout(
      {super.key,
      required this.mobileBody,
      required this.desktopBody,
      required this.cellBody,
      required this.desktopBodyC});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 499) {
          return cellBody;
        } else if (constraints.maxWidth < 1000) {
          return mobileBody;
        } else if (constraints.maxWidth < 1340) {
          return desktopBodyC;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
