// components/my_tap_bar.dart
import 'package:flutter/material.dart';
import 'package:personal/components/styles/my_style.dart';
import 'package:personal/models/tab_bar.dart';

class MyTapBar extends StatelessWidget {
  final TabController tabController;
  const MyTapBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      dividerColor: Colors.transparent,
      indicatorColor: Colors.amber,
      labelColor: Colors.amber,
      unselectedLabelColor: Colors.grey.shade400,
      tabs: tabData.map((tab) {
        return Tab(child: Text(tab.title, style: simpleboldText));
      }).toList(),
    );
  }
}
