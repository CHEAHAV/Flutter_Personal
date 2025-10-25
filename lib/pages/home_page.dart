import 'package:flutter/material.dart';
import 'package:personal/components/homes/my_container.dart';
import 'package:personal/components/homes/my_photo.dart';

class HomePage extends StatefulWidget {
  final VoidCallback onProfileTap;
  const HomePage({super.key, required this.onProfileTap});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 150, left: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: MyContainer(onProfileTap: widget.onProfileTap)),
              SizedBox(width: 100),
              Expanded(child: MyPhoto()),
            ],
          ),
        ],
      ),
    );
  }
}
