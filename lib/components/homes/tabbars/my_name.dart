import 'package:flutter/material.dart';
import 'package:personal/components/styles/my_style.dart';

class MyName extends StatelessWidget {
  final String text;
  final String name;
  const MyName({super.key, required this.text, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              fontFamily: 'ALGER',
              color: Colors.green.shade900,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(name, style: simpleboldText.copyWith(color: Colors.grey.shade300)),
      ],
    );
  }
}
