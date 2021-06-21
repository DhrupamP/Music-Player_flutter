import 'package:flutter/material.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/screens/search_screen.dart';
import 'package:music_player/utilities/style.dart';
import 'package:music_player/screens/list_screen.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> children = [
    const ListScreen(),
    HomeScreen(),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: children[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: BottomNavigationBar(
            selectedFontSize: 0.0,
            unselectedFontSize: 0.0,

            // ignore: prefer_const_literals_to_create_immutables
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                backgroundColor: kSecondaryColor,
                icon: Icon(Icons.list_rounded, size: 35),
                label: '',
              ),
              const BottomNavigationBarItem(
                backgroundColor: kSecondaryColor,
                icon: Icon(
                  Icons.equalizer_rounded,
                  size: 35,
                ),
                label: '',
              ),
              const BottomNavigationBarItem(
                backgroundColor: kSecondaryColor,
                icon: Icon(Icons.manage_search, size: 35),
                label: '',
              ),
              const BottomNavigationBarItem(
                backgroundColor: kSecondaryColor,
                icon: Icon(Icons.settings, size: 35),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.blueAccent,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            onTap: onTabTapped,
            backgroundColor: kSecondaryColor,
          ),
        ),
      ),
    );
  }
}
