import 'package:bai_choi/screens/introduction_game/components/introduce_screen.dart';
import 'package:bai_choi/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    Color iconColor = Theme.of(context).colorScheme.secondary.withOpacity(0.9);
 double imageSize = 100.0;
  bool isImageExpanded = false;

  void toggleImageSize() {
    setState(() {
      imageSize = isImageExpanded ? 100.0 : 300.0;
      isImageExpanded = !isImageExpanded;
    });
  }
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF861414),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor:
                Theme.of(context).colorScheme.tertiaryContainer,
            tabs: const [
              Tab(text: "Giới thiệu"),
              Tab(text: "Cách chơi"),
              Tab(text: "Lá bài"),
            ],
            indicatorColor: const Color(0xFF861414),
          ),
        ),
        body: TabBarView(
          children: [
            IntroduceScreen(context),
            Icon(Icons.directions_transit),
            Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://mir-s3-cdn-cf.behance.net/project_modules/max_3840/db1c5d66927243.5c0a2613de7c9.jpg"),
            fit: BoxFit.cover,
          )
        ),
        
      ),
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
