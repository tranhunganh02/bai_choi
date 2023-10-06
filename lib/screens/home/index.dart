import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bai_choi/utils/routes.dart' as route;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool mute = true;

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/bg_app.jpeg"),
            fit: BoxFit.cover,
          )
        ),
        child: Body(height, context),
      ),
  
      floatingActionButton: optional_acction(context)

    );
  }

  // ignore: non_constant_identifier_names
  BackdropFilter Body(double height, BuildContext context) {
    return BackdropFilter(
         filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
        child: Padding(
          padding:const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
          child: Center(         
            child: SizedBox(
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Title_game(),
                  Play_button(context),
                ],
              ),
            ),
          ),
        ),
      );
  }

  // ignore: non_constant_identifier_names
  GestureDetector Play_button(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route.introductionGameScreen),
      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                         color: Theme.of(context).primaryColor,
                      ),
                     
                      height: 80,
                      width: 80,
                      child: Center(child: Icon(Icons.play_arrow, size: 50, color: Theme.of(context).colorScheme.onPrimary,))),
    );
  }

  Container Title_game() {
    return Container(
                    height: 100,
                    //color: Colors.lightBlue,
                    child: const ListTile(
                  
                      title: Text("Bài chòi",style: TextStyle(fontFamily: "DelaGothicOne", fontSize: 40, fontWeight: FontWeight.w900)),
                      subtitle: Text("Mang giá trị dân gian đến với mọi người"),
              
                    ),
                  );
  }

  // ignore: non_constant_identifier_names
  SpeedDial optional_acction(BuildContext context) {
    return SpeedDial(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      animatedIcon: AnimatedIcons.menu_close,
      shape: const CircleBorder(),
      overlayColor: Theme.of(context).shadowColor,
      overlayOpacity: 0.2,
      spaceBetweenChildren: 15,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
      childrenButtonSize:const Size.fromRadius(30),
      children: [
          SpeedDialChild(
            shape: const CircleBorder(),
          label: "Giới thiệu game",
          onTap: (){
            Navigator.pushNamed(context, route.introductionGameScreen);
          },
           child:const Icon(Icons.question_mark, )
        ),
        SpeedDialChild(
          shape: const CircleBorder(),
          onTap: (){
            setState(() {
              mute = !mute;
              print(mute);
            });
          },
           child: mute==true ? const Icon(Icons.volume_mute): const Icon(Icons.volume_off)
        )
      ],
    );
  }
}
