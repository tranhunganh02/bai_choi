import 'package:audioplayers/audioplayers.dart';
import 'package:bai_choi/model/Gift.dart';
import 'package:bai_choi/services/GiftService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bai_choi/utils/routes.dart' as route;
import 'package:bai_choi/Constaint.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool mute = true;
  bool isFirstTimeUser = false;
  GiftService GS = GiftService();


  final player = AudioPlayer();

  Future<void> checkIsFirstUsing() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTimeUser') ?? true;

    if (isFirstTime) {
      setState(() {
        isFirstTimeUser = true;
        GS.createDataFirstTime(bieuTuongVietNam);
      });

      prefs.setBool('isFirstTimeUser', false);
    }
  }

  Future<void> playAudioFromFile() async {
    await player.play(AssetSource("audio/intro.mp3"));
  }

  void saveImageUrls(List<String> imageUrls) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('imageUrls', imageUrls);
  }

  Future<void> turnOffVolumne() async {
    if (mute) {
      await player.setVolume(0);
    } else {
      await player.setVolume(1);
    }
    setState(() {
      mute = !mute;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    playAudioFromFile();
    checkIsFirstUsing();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage("assets/img/bg_home_1.png"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      const Color(0xFFB22A21).withOpacity(0.30),
                      BlendMode.color))),
          child: Body(height, context),
        ),
        floatingActionButton: optional_action(context));
  }

  // ignore: non_constant_identifier_names
  Row Body(double height, BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        Expanded(
            child: Container(
          color: const Color(0xFFB22A21),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bài Chòi",
                        style: TextStyle(
                            fontFamily: "DelaGothicOne",
                            fontSize: 30,
                            color: const Color(0xFFFDB813),
                            shadows: [
                              Shadow(
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.25),
                                offset: const Offset(3, 3),
                              )
                            ])),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text(
                        "Mang giá trị dân gian đến với mọi người",
                        style: TextStyle(
                            fontFamily: "Aviano",
                            fontSize: 7,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Play_button(context)
              ],
            ),
          ),
        )),
        Expanded(child: Container())
      ],
    );
  }

  // Text titleGame(BuildContext context) {
  //   return const Text("Bài Chòi",
  //       style: TextStyle(
  //           fontFamily: "DelaGothicOne",
  //           fontSize: 30,
  //           color: Color(0xFFFDB813)));
  // }

  // ignore: non_constant_identifier_names
  GestureDetector Play_button(BuildContext context) {
    return GestureDetector(
      onTap: () {
        player.pause();
        // Navigator.pushNamed(context, route.modeGameScreen);
        Navigator.pushNamed(context, route.modeGameScreen);
      },
      child: const SizedBox(
          height: 80,
          width: 100,
          child: Center(
              child: TextCustom(
                  fontFamily: 'DelaGothicOne',
                  content: 'Bắt đầu',
                  sizeText: 20,
                  colorText: Colors.white))),
    );
  }

  // ignore: non_constant_identifier_names
  SpeedDial optional_action(BuildContext context) {
    return SpeedDial(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      animatedIcon: AnimatedIcons.menu_close,
      shape: const CircleBorder(),
      overlayColor: Theme.of(context).shadowColor,
      overlayOpacity: 0.2,
      spaceBetweenChildren: 15,
      foregroundColor: Theme.of(context).colorScheme.onSecondary,
      childrenButtonSize: const Size.fromRadius(30),
      children: [
        SpeedDialChild(
            shape: const CircleBorder(),
            label: "Phần quà của bạn",
            onTap: () {
              Navigator.pushNamed(context, route.itemPlayerScreen);
            },
            child: const Icon(
              Icons.card_giftcard_sharp,
            )),
        SpeedDialChild(
            shape: const CircleBorder(),
            label: "Giới thiệu game",
            onTap: () {
              Navigator.pushNamed(context, route.introductionGameScreen);
            },
            child: const Icon(
              Icons.question_mark,
            )),
        SpeedDialChild(
            shape: const CircleBorder(),
            onTap: () {
              setState(() {
                turnOffVolumne();
              });
            },
            child: mute
                ? const Icon(Icons.volume_mute)
                : const Icon(Icons.volume_off)),
      ],
    );
  }
}
