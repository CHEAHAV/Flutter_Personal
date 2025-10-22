import 'package:drop_shadow/drop_shadow.dart';
import 'package:flutter/material.dart';
import 'package:personal/components/homes/my_buttons.dart';
import 'package:personal/components/styles/my_style.dart';
import 'package:personal/models/info.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 600,
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropShadow(
            child: Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.green),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  info['greeting']!,
                  style: simpleboldText.copyWith(color: Colors.green.shade900),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text("I'm", style: bigboldText),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  info['name']!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'ALGER',
                    color: Colors.amber,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.amber,
                    decorationThickness: 1,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Text(info['study']!, style: bigboldText, maxLines: 2),
          Text(info['year']!, style: bigboldText, maxLines: 2),
          SizedBox(height: 20),
          Text(info['description']!),
          MyButton(text: "View my profile"),
        ],
      ),
    );
  }
}
