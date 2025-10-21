import 'package:flutter/material.dart';
import 'package:personal/responsives/desktop_body.dart';
import 'package:personal/responsives/mobile_body.dart';
import 'package:personal/responsives/responsive_layout.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
