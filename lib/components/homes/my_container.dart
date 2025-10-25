import 'package:flutter/material.dart';
import 'package:personal/components/homes/my_buttons.dart';
import 'package:personal/components/styles/my_style.dart';
import 'package:personal/models/info.dart';

class MyContainer extends StatelessWidget {
  final VoidCallback onProfileTap;
  const MyContainer({super.key, required this.onProfileTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Card(
            child: Container(
              height: 80,
              width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  info['greeting']!,
                  style: simpleboldText.copyWith(color: Colors.blue),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        Row(
          children: [
            Flexible(
              child: Container(
                width: 250,
                decoration: BoxDecoration(),
                child: Text(
                  info['iam']!,
                  style: bigboldText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
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
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Text(info['study']!, style: bigboldText, maxLines: 2),
        Row(
          children: [
            Flexible(
              child: Text(
                info['year']!,
                style: bigboldText,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "|",
              style: signText.copyWith(color: Colors.blue),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(info['description']!),
        
        Center(child: MyButton(text: "View my profile", onTap: onProfileTap)),
      ],
    );
  }
}
