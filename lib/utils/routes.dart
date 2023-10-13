
import 'package:bai_choi/screens/choose_mode_game/index.dart';
import 'package:bai_choi/screens/choose_type_game/index.dart';
import 'package:bai_choi/screens/home/index.dart';
import 'package:bai_choi/screens/introduction_game/index.dart';
import 'package:bai_choi/screens/video/index.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart'; 

const String homeScreen = 'homeScreen';
const String introductionGameScreen = 'introductionScreen';
const String roomScreen = 'roomScreen';
const String chooseModeGame = 'chooseModeGame';
const String chooseTypeGame = 'chooseTypeGame';

  Route<dynamic> controller (RouteSettings settings){
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(builder: (context) =>const HomeScreen());

      case introductionGameScreen:
        return MaterialPageRoute(builder: (context) => const IntroductionScreen());
        
      case chooseModeGame:
        return MaterialPageRoute(builder: (context) => const ChooseModeGame());

      case chooseTypeGame:
        return MaterialPageRoute(builder: (context) => const ChooseTypeGame());

      case roomScreen:
        return MaterialPageRoute(builder: (context) => const VideoPlayerScreen());
      default:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
    }
  }
