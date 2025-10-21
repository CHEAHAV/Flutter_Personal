import 'package:flutter/material.dart';
import 'package:personal/components/homes/my_container.dart';
import 'package:personal/components/homes/my_photo.dart';
import 'package:personal/components/homes/tabbars/contact_me.dart';
import 'package:personal/components/homes/tabbars/my_name.dart';
import 'package:personal/components/homes/tabbars/my_tap_bar.dart';
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, right: 150, left: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 15),
                    MyName(text: "C", name: "CHEAHAV."),
                    Expanded(
                      child: MyTapBar(tabController: _tabController),
                    ),
                    SizedBox(
                      width: 120,
                      child: ContactMe(text: "Contact Me"),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(child: MyPhoto()),
                SizedBox(width: 30),
                Expanded(child: MyContainer()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
