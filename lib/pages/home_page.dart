import 'package:flutter/material.dart';
import 'package:personal/components/contacts/contact_me.dart';
import 'package:personal/components/my_tap_bar.dart';
import 'package:personal/components/styles/my_style.dart';
import 'package:personal/models/tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabData.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 150, left: 150),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Text("Name", style: smallBoldText),
                SizedBox(width: 20),
                Expanded(child: MyTapBar(tabController: _tabController)),
                SizedBox(width: 20),
                ContactMe(text: "Contact Me"),
                SizedBox(width: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
