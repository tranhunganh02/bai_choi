import 'package:bai_choi/model/GameMatch.dart';
import 'package:bai_choi/model/Player.dart';
import 'package:bai_choi/screens/InGame/components/PlayerPosition.dart';
import 'package:bai_choi/services/ModeGameServices.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  final GameMatch gameMatch;

  const RoomScreen({super.key, required this.gameMatch});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> with TickerProviderStateMixin {
  bool getData = false;
  ModeGameServices RS = ModeGameServices();
  late int selectedId;

  void startGame() {
    setState(() {
      getData = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Center(
        child: getData
            ? Stack(alignment: Alignment.center, children: [
                AnimatedPositioned(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.38,
                  child: Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.yellow, width: 5),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      // child: _videoPlayerController.value.isInitialized
                      // child: _videoInitialized
                      //     ? AspectRatio(
                      //         aspectRatio: _videoPlayerController.value.aspectRatio,
                      //         child: VideoPlayer(_videoPlayerController),
                      //       )
                      //     :

                      child: Container(),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black, width: 0.1)),
                    ),
                  ]),
                ),
                PlayerPosition(player: widget.gameMatch.players[0]),
                PlayerPosition(player: widget.gameMatch.players[1]),
                PlayerPosition(player: widget.gameMatch.players[2]),
                PlayerPosition(player: widget.gameMatch.players[3]),
                //PositionCard(type: listCard.[1]., angle: angle, imgURl: imgURl, indexCard: indexCard, sigX: sigX, sigY: sigY)
              ])
            : Center(
                child: TextButton(
                    style: ButtonStyle(),
                    onPressed: startGame,
                    child: const Text(
                      "Bắt đầu",
                      style:
                          TextStyle(fontFamily: "Aviano", color: Colors.white),
                    )),
              ),
      ),
    );
  }
}
