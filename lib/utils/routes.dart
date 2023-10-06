import 'package:bai_choi/utils/routes_name.dart';
import 'package:flutter/material.dart';
import '../screens/home/index.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings settings){
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());

      case RoutesName.htplay:
        return MaterialPageRoute(builder: (BuildContext context) => const Column());

      case RoutesName.room:
        return MaterialPageRoute(builder: (BuildContext context) => const Scaffold(
          body: Center(
            child: Text("room"),
          ),
        ));
      default:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());
    }
  }

}