import 'package:education/ui/styles/textStyle.dart';
import 'package:education/ui/styles/themes.dart';
import 'package:education/ui/widgets/components/card_widget.dart';
import 'package:education/ui/widgets/components/custom_appbar.dart';
import 'package:education/ui/widgets/components/search_textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: homeBackgroundTheme,
      body: Column(
        children: [
          CustomAppBar(height: height),
          Padding(
            padding: const EdgeInsets.only(left: 23, right: 23, top: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                    text: 'Explore categories',
                    fontSize: 22,
                    color: blackTheme,
                    fontWeight: FontWeight.w600),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('No new categories')));
                  },
                  child: const TextWidget(
                      text: 'See all',
                      fontSize: 14,
                      color: blueTheme,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.549,
                  child: ListView(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CardWidget(
                          width: width,
                          height: height,
                          totalCourses: '27 Courses',
                          imageName: 'camera.png',
                          courseTitle: 'Photography',
                        ),
                        CardWidget(
                          width: width,
                          height: height,
                          totalCourses: '22 Courses',
                          imageName: 'laptop.png',
                          courseTitle: 'Marketing',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CardWidget(
                            width: width,
                            height: height,
                            totalCourses: '25 Courses',
                            imageName: 'phone.png',
                            courseTitle: 'UI Designer',
                          ),
                          CardWidget(
                            width: width,
                            height: height,
                            totalCourses: '32 Courses',
                            imageName: 'video.png',
                            courseTitle: 'Video Editor',
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
