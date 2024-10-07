import 'package:flutter/material.dart';
import 'package:unidos_pela_fe/responsive/catolico_desktop.dart';
import 'package:unidos_pela_fe/responsive/catolico_mobile.dart';
import 'package:unidos_pela_fe/responsive/responsive.dart';

class catolicoR extends StatefulWidget {
  const catolicoR({super.key});

  @override
  State<catolicoR> createState() => _catolicoRState();
}

class _catolicoRState extends State<catolicoR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
          mobileBody: catolicoMob(), desktopBody: catolicoDesk()),
    );
  }
}
