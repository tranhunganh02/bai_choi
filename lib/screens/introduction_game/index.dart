import 'package:bai_choi/screens/introduction_game/components/introduce_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'components/TutorialScreen.dart';
import 'components/list_card_1.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF861414),
          leading: IconButton(
            iconSize: 20,
            color: Colors.white,
            style: const ButtonStyle(
                alignment: Alignment.center,
                padding: MaterialStatePropertyAll(EdgeInsets.all(5))),
            // Customize the arrow color here

            onPressed: () {
              // Handle back button press here
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20.0), // Set
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xFFFCDFA6),
              labelStyle: TextStyle(fontFamily: "DelaGothicOne"),
              tabs: [
                Tab(text: "Giới thiệu"),
                Tab(text: "Cách chơi"),
                Tab(text: "Lá bài"),
              ],
              indicatorColor: Color(0xFF861414),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            IntroduceScreen(context),
            TutorialScreen(context),
            ListCard(context)
          ],
        ),
      ),
    );
  }

  SpeedDial optional_acction(BuildContext context) {
    return SpeedDial(
      direction: SpeedDialDirection.down,
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
            label: "Hướng dẫn chơi",
            onTap: () {
              // Navigator.pushNamed(context, route.introductionGameScreen);
            },
            child: const Icon(
              Icons.my_library_books_outlined,
            )),
        SpeedDialChild(
            shape: const CircleBorder(), onTap: () {}, child: Icon(Icons.check))
      ],
    );
  }
}
