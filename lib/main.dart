import 'package:flutter/material.dart';
import 'package:music_player/components/splash_screen.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/utilities/constants.dart';
import 'screens/search_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),

        HOME_SCREEN: (BuildContext context) => const SearchScreen(),


        //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
      },
    );
  }
}
