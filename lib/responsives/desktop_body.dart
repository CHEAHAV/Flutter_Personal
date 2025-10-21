import 'package:flutter/material.dart';
import 'package:personal/pages/home_page.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(children: [HomePage()]),
    );
  }
}
