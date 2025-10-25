import 'package:flutter/material.dart';
import 'package:personal/components/styles/my_style.dart';
import 'package:personal/models/education.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        child: Container(
          height: 570,
          width: 600,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(option[0]['photo']!),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      option[0]['name']!,
                      style: bigText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: education.length,
                  itemBuilder: (context, index) {
                    final edu = education[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 12, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            edu['year']!,
                            style: signText.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(edu['schoolName']!, style: signTextBold),
                          Text(
                            edu['subject']!,
                            style: signText.copyWith(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
