import 'package:flutter/material.dart';
import 'package:unidos_pela_fe/responsive/cellBody.dart';
import 'package:unidos_pela_fe/responsive/desktop_body.dart';
import 'package:unidos_pela_fe/responsive/desktop_correction.dart';
import 'package:unidos_pela_fe/responsive/mobile_body.dart';
import 'package:unidos_pela_fe/responsive/responsive.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveLayout(
      mobileBody: MobileBody(),
      desktopBody: DesktopBody(),
      cellBody: Cellbody(),
      desktopBodyC: DesktopBodyC(),
    ));
  }
}
