import 'dart:ffi';

import 'package:bai_choi/screens/home/index.dart';
import 'package:bai_choi/screens/introduction_game/index.dart';
import 'package:bai_choi/screens/type_game/index.dart';
import 'package:flutter/material.dart';
import 'package:bai_choi/screens/mode_game/index.dart';

import '../screens/enter_player_name_screen/index.dart';

const String homeScreen = 'homeScreen';
const String introductionGameScreen = 'introductionScreen';
const String roomScreen = 'roomScreen';
const String modeGameScreen = "modeScreen";
const String typeGameScreen = "typeGameScreen";
const String enterPlayerNameScreen = "enterPlayerNameScreen";


Route<dynamic> controller(
  RouteSettings settings,
) {
  switch (settings.name) {
    case homeScreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case introductionGameScreen:
      return MaterialPageRoute(
          builder: (context) => const IntroductionScreen());
    case modeGameScreen:
      return MaterialPageRoute(builder: (context) => const ChooseModeGame());
    case typeGameScreen:
      return MaterialPageRoute(builder: (context) => const ChooseTypeGame());
    case enterPlayerNameScreen:
      return MaterialPageRoute(builder: (context) => const EnterPlayerScreen(maxRound: 9,));
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen());
  }
}
