import 'package:flutter/material.dart';
import 'package:personal/components/educations/my_course.dart';
import 'package:personal/components/educations/my_educations.dart';
import 'package:personal/components/styles/my_style.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 770,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(right: 70, left: 70),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "My ",
                        style: timebig.copyWith(color: Colors.blue),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "Education and short",
                        style: timebig.copyWith(fontStyle: FontStyle.italic),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        " Course ",
                        style: timebig.copyWith(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [MyEducation(), SizedBox(width: 10), MyCourse()],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
