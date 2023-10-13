import 'dart:ffi';

import 'package:bai_choi/screens/home/index.dart';
import 'package:bai_choi/screens/introduction_game/index.dart';
//import 'package:bai_choi/screens/test/test.dart';
import 'package:flutter/material.dart';
import 'package:bai_choi/screens/mode_game/index.dart';

const String homeScreen = 'homeScreen';

// ignore: constant_identifier_names
const String introductionGameScreen = 'introductionScreen';

const String roomScreen = 'roomScreen';

const String modeGameScreen = "modeScreen";



Route<dynamic> controller(RouteSettings settings,) {
  switch (settings.name) {
    case homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());

    case introductionGameScreen:
      return MaterialPageRoute(
          builder: (context) => const IntroductionScreen());

    case modeGameScreen:
      return MaterialPageRoute(builder: (context) => const ModeGameScreen());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen());
  }
}
