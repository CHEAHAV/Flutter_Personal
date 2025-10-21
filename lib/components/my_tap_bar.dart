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
      tabs: tabData.entries.map((entry) {
        return Tab(child: Text(entry.value, style: simpleboldText));
      }).toList(),
    );
  }
}
