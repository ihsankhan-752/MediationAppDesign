import 'package:design/Screens/PracticeScreen/myPractices.dart';
import 'package:design/Screens/musicPlayerScreen/MusicPlayer.dart';
import 'package:flutter/material.dart';

import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/WelcomeScreen/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:WelcomeScreen(),
    );
  }
}


