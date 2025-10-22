import 'package:flutter/material.dart';
import 'package:personal/components/homes/my_container.dart';
import 'package:personal/components/homes/my_photo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 150, left: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // This will work now
            children: const [
              Expanded(child: MyContainer()),
              SizedBox(width: 100),
              Expanded(child: MyPhoto()),
            ],
          ),
        ],
      ),
    );
  }
}
