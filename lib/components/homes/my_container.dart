import 'package:flutter/material.dart';
import 'package:personal/components/homes/my_buttons.dart';
import 'package:personal/components/styles/my_style.dart';
import 'package:personal/models/info.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      height: 600,
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Container(
              width: 500,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  info['greeting']!,
                  style: simpleboldText.copyWith(color: Colors.blue),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(info['iam']!, style: bigboldText, maxLines: 1),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  info['name']!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'ALGER',
                    color: Colors.blue,
                    decorationColor: Colors.blue,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
          Text(info['study']!, style: bigboldText, maxLines: 2),
          Row(
            children: [
              Text(
                info['year']!,
                style: bigboldText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: Text("|", style: signText.copyWith(color: Colors.blue),overflow: TextOverflow.ellipsis,),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(info['description']!),
          MyButton(text: "View my profile"),
        ],
      ),
    );
  }
}
