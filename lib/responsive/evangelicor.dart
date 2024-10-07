import 'package:flutter/material.dart';
import 'package:unidos_pela_fe/responsive/evangelico_desktop.dart';
import 'package:unidos_pela_fe/responsive/evangelico_mobile.dart';
import 'package:unidos_pela_fe/responsive/responsive.dart';

class evangelicoR extends StatefulWidget {
  const evangelicoR({super.key});

  @override
  State<evangelicoR> createState() => _evangelicoRState();
}

class _evangelicoRState extends State<evangelicoR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: evangelicoM(), desktopBody: evangelicoDesk()),
    );
  }
}
