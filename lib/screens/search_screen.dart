import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/utilities/style.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          color: kSecondaryColor,
          margin: const EdgeInsets.all(20),
          child: const TextField(
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: 'Search for Music',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)))),
          ),
        ),
      ),
    );
  }
}
