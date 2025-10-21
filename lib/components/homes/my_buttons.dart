import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:personal/components/styles/my_style.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: DropShadow(
        child: Container(
          width: 150,
          height: 35,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Text(
              text,
              style: simpleboldText.copyWith(color: Colors.green.shade900),
            ),
          ),
        ),
      ),
    );
  }
}
