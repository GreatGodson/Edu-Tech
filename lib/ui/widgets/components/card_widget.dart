import 'package:education/ui/styles/text_style.dart';
import 'package:education/ui/styles/themes.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageName,
    required this.courseTitle,
    required this.totalCourses,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageName;
  final String courseTitle;
  final String totalCourses;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const CircleBorder(),
      shadowColor: Colors.deepPurpleAccent,
      child: Container(
        width: width * 0.4,
        height: height * 0.23,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: whiteTheme),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 40),
          child: Column(
            children: [
              Image.asset(
                'images/$imageName',
                width: width * 0.2,
                height: height * 0.09,
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: courseTitle,
                      fontSize: 16,
                      color: blackTheme,
                      fontWeight: FontWeight.w400),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextWidget(
                        text: totalCourses,
                        fontSize: 12,
                        color: coursesTheme,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
