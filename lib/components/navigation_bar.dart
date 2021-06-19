import 'package:flutter/material.dart';
import 'package:music_player/utilities/style.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      margin: const EdgeInsets.all(20),
      child: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.red,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: kSecondaryColor,
            icon: Icon(
              Icons.list_rounded,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: kSecondaryColor,
            icon: Icon(
              Icons.equalizer_rounded,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: kSecondaryColor,
            icon: Icon(
              Icons.manage_search,
              color: Colors.white,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: kSecondaryColor,
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
