import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/utilities/style.dart';

// ignore: use_key_in_widget_constructors
// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final bool _isPlaying = false;
  String play = 'play_arrow_rounded';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: sized_box_for_whitespace
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: const Center(
                      child: Text(
                    'Image Area',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              Expanded(
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: deprecated_member_use
                    FlatButton(
                      child: const Icon(
                        Icons.skip_previous_rounded,
                        color: Colors.white,
                        size: 50.0,
                      ),
                      onPressed: () {
                        print('Clicked Previous Button');
                      },
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      child: const Icon(
                        Icons.pause_rounded,
                        color: Colors.white,
                        size: 65.0,
                      ),
                      onPressed: () {
                        // ignore: avoid_print
                        print('clicked Pause Button');
                        // setState(() {
                        //   _isPlaying = !_isPlaying;
                        //   if (_isPlaying) {
                        //     _curr = play_arrow_rounded;
                        //   }
                        // });
                      },
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      child: const Icon(
                        Icons.skip_next_rounded,
                        color: Colors.white,
                        size: 50.0,
                      ),
                      onPressed: () {
                        print('Clicked Next Button');
                      },
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem(icon: )),
            ],
          ),
        ),
      ),
    );
  }
}
