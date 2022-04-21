import 'package:education/ui/styles/text_style.dart';
import 'package:education/ui/styles/themes.dart';
import 'package:education/ui/widgets/components/search_textfield.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.28,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: primaryTheme,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40))),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 23, right: 23, bottom: 23),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TextWidget(
                    text: 'Hello',
                    fontSize: 24,
                    color: whiteTheme,
                    fontWeight: FontWeight.w600),
                IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'You currently don\'t have any notifications')));
                    },
                    icon: const CircleAvatar(
                        backgroundColor: whiteTheme,
                        radius: 30,
                        child: Icon(
                          Icons.add_alert,
                          size: 20,
                        ))),
              ],
            ),
            Row(
              children: const [
                TextWidget(
                    text: 'Let\'s start together',
                    fontSize: 16,
                    color: darkWhiteTheme,
                    fontWeight: FontWeight.w400),
              ],
            ),
            const Spacer(),
            const SearchTextField()
          ],
        ),
      ),
    );
  }
}
