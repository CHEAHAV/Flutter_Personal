import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';

class MyPhoto extends StatelessWidget {
  const MyPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Container(
        width: 400,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 5, color: Colors.green.shade900),
        ),
        child: Image(
          image: AssetImage('assets/images/reachana.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
