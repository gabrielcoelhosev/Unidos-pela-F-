import 'package:flutter/material.dart';
import 'package:unidos_pela_fe/responsive/responsive.dart';
import 'package:unidos_pela_fe/responsive/ubanda_desktop.dart';
import 'package:unidos_pela_fe/responsive/ubanda_mobile.dart';

class ubandarR extends StatefulWidget {
  const ubandarR({super.key});

  @override
  State<ubandarR> createState() => _ubandarRState();
}

class _ubandarRState extends State<ubandarR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          ResponsiveLayout(mobileBody: ubandaMob(), desktopBody: ubandaDesk()),
    );
  }
}
