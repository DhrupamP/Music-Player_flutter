import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class StartupScreen extends StatelessWidget {
  // const StartupScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        // ignore: avoid_unnecessary_containers
        child: Center(
          child: Text(
            'Music Player',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
