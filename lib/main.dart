import 'package:flutter/material.dart';
import 'package:music_player/components/navigation_bar.dart';
import 'package:music_player/components/splash_screen.dart';
import 'package:music_player/screens/list_screen.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/screens/search_screen.dart';
import 'package:music_player/utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(), routes: <String, WidgetBuilder>{
      SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
      HOME_SCREEN: (BuildContext context) => HomeScreen(),
      SEARCH_SCREEN: (BuildContext context) => const SearchScreen(),
      LIST_SCREEN: (BuildContext context) => const ListScreen(),
      NAVIGATION_BAR: (BuildContext context) => const NavigationBar(),
    });
  }
}
