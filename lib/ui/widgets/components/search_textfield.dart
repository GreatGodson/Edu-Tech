import 'package:education/ui/styles/themes.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: whiteTheme,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search your course',
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 25, top: 10, right: 10),
              child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    size: 30,
                    color: primaryTheme,
                  )),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 25, top: 10),
              child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.mic_sharp,
                    size: 30,
                    color: primaryTheme,
                  )),
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(left: 27, top: 19)),
      ),
    );
  }
}
