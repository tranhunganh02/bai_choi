import 'package:bai_choi/screens/introduction_game/components/introduce_screen.dart';
import 'package:bai_choi/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bai_choi/model/Cards.dart';

import 'components/list_card_1.dart';
import 'components/title_list_card.dart';

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
            style:const ButtonStyle(
                alignment: Alignment.center,
                padding: MaterialStatePropertyAll(
                    EdgeInsets.all(5))), // Customize the arrow color here

            onPressed: () {
              // Handle back button press here
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20.0), // Set
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              unselectedLabelColor:
                  Theme.of(context).colorScheme.tertiaryContainer,
              labelStyle: const TextStyle(fontFamily: "DelaGothicOne"),
              tabs: const [
                Tab(text: "Giới thiệu"),
                Tab(text: "Cách chơi"),
                Tab(text: "Lá bài"),
              ],
              indicatorColor: const Color(0xFF861414),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            IntroduceScreen(context),
            const Icon(Icons.directions_transit),
            ListCard()
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
