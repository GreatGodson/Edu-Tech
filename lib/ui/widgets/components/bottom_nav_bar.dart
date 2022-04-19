import 'package:education/ui/screens/home_screen.dart';
import 'package:education/ui/screens/saved_screen.dart';
import 'package:education/ui/screens/settings_screen.dart';
import 'package:education/ui/screens/tutorial_screen.dart';
import 'package:education/ui/styles/themes.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const TutorialScreen(),
    const SavedScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteTheme,
        elevation: 0.0,
        selectedItemColor: primaryTheme,
        unselectedItemColor: greyTheme,
        iconSize: 30.0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline_sharp),
            label: 'Tutorials',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cloud_download_sharp), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
