import 'package:flutter/material.dart';
import 'package:personal/components/styles/my_style.dart';

class ContactMe extends StatelessWidget {
  final String text;
  const ContactMe({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        color: Colors.white,
      ),
      child: Center(
        child: Text(
          text,
          style: smallBoldText.copyWith(color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
