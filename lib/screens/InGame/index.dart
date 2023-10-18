import 'dart:async';
import 'dart:math';

import 'package:bai_choi/model/GameMatch.dart';
import 'package:bai_choi/screens/InGame/components/PlayerPosition.dart';
import 'package:bai_choi/services/ModeGameServices.dart';
import 'package:bai_choi/services/VideoGameService.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:logger/logger.dart';
import 'package:bai_choi/utils/routes.dart' as route;

import '../../model/Player.dart';
import '../../model/Song.dart';

class RoomScreen extends StatefulWidget {
  final GameMatch gameMatch;

  const RoomScreen({super.key, required this.gameMatch});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> with TickerProviderStateMixin {
  bool getData = false;
  ModeGameServices RS = ModeGameServices();
  VideoGameServices VGS = VideoGameServices();
  late VideoPlayerController _controller;
  late int selectedId;
  var logger = Logger();
  List<String> newURL = [];

  void startGame() {
    setState(() {
      getData = true;
    });
  }

  // Add new image to list result
  Future<void> addNewImage(String imgURL) async {
    Timer(const Duration(seconds: 1), () {
      setState(() {
        newURL.add(imgURL);
      });
    });
  }

  @override
  void initState() {
    List<List<Song>> songListLists =
        VGS.getRandomListSong(widget.gameMatch.maxRounds);
    widget.gameMatch.songs = VGS.getRandomSongList(songListLists);
    List<String> urlList = getURLList(widget.gameMatch.songs);

    _controller = VideoPlayerController.asset(urlList.first)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          logger.i("Playing ${widget.gameMatch.songs.first.songURL}");
        });
      });
    _controller.addListener(_onVideoEnded);

    _controller.setVolume(1.0);

    super.initState();
  }

  List<String> getURLList(List<Song> list) {
    List<String> urlList = [];
    for (var song in list) {
      urlList.add(song.songURL);
    }
    return urlList;
  }

  Future<void> showModal(Song song) async {
    OverlayEntry overlayEntry = OverlayEntry(
        builder: (context) => Center(
              child: AnimatedPositioned(
                height: 150,
                width: 50,
                curve: Curves.easeInOut,
                duration: const Duration(seconds: 2),
                child: Container(
                    height: 100,
                    width: 40,
                    child: song.isCard != null
                        ? Image.asset(song.isCard.cardURL)
                        : Container(),
                ),
              ),
            ));

    // Insert the overlay entry
    Overlay.of(context).insert(overlayEntry);

    // Delay for a few seconds, then remove the overlay
    Future.delayed(const Duration(seconds: 5), () {
      overlayEntry.remove();
      // playNextVideo();
    }).then((value) => {addNewImage(song.isCard.cardURL)});
  }

  void logScore(List<Player> players) {
    for (var player in players) {
      logger.d("${player.playerName}: ${player.score}");
    }
  }

  // Future<void> _onVideoEnded() async {
  void _onVideoEnded() {
    if (_controller.value.position == _controller.value.duration) {
      _controller.pause();
      Song endedSong = widget.gameMatch.songs.removeAt(0);
      showModal(endedSong);
      List<Player> players = widget.gameMatch.players;
      try {
        int matchedPlayerId = VGS.isMatchCard(endedSong.isCard, players);
        players[matchedPlayerId - 1].score++;
      } catch (e) {
        e.toString();
      }
      logScore(players);

      if (widget.gameMatch.songs.isNotEmpty) {
        _controller.dispose();
        Timer(const Duration(milliseconds: 1500), () {
          _controller =
              VideoPlayerController.asset(widget.gameMatch.songs.first.songURL)
                ..initialize().then((_) {
                  setState(() {
                    _controller.play();
                    try {
                      logger.i(
                          "Playing ${widget.gameMatch.songs.first.isCard.cardssName}");
                    } catch (e) {}
                  });
                });
          _controller.addListener(_onVideoEnded);
        });
      } else {
        logger.i('All videos played');

        // Kiểm tra điều kiện thắng
        int matchResult = VGS.checkWinCondition(players);
        if (matchResult != -1) {
          showMatchResult(players[matchResult], 1);
        }
      }
    }
  }

  void showMatchResult(Player player, int flagResult) {
    showDialog(
        context: context,
        builder: (context) {
          if (flagResult != -1) {
            return AlertDialog(
              title: Text("Kết quả"),
              content: Text("${player.playerName} chiến thắng"),
              actions: [
                TextButton(onPressed: () {}, child: Text("Về màn hình chính")),
                TextButton(onPressed: () {}, child: Text("Chơi lại"))
              ],
            );
          } else {
            return AlertDialog(
              title: Text("Kết quả"),
              content: Text("Hòa"),
              actions: [
                TextButton(onPressed: () {}, child: Text("Về màn hình chính")),
                TextButton(onPressed: () {}, child: Text("Chơi lại"))
              ],
            );
          }
        });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    newURL.clear();
    logger.isClosed();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
         bool confirmExit = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Xác nhận thoát'),
            content: Text('Bạn có chắc muốn thoát khỏi ứng dụng?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Không'),
              ),
              TextButton(
                onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
                child: Text('Có'),
              ),
            ],
          ),
        );
         return confirmExit ?? false;
      },
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Center(
            child: Stack(alignment: Alignment.center, children: [
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
                // child: _controller.value.isInitialized
                child: _controller.value.isInitialized
                    ? Stack(
                  alignment: Alignment.center,
                        children: [
                          Positioned(
                            child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                          Positioned(

                            left: 0,
                            bottom: 0,
                            child: SizedBox(
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.play_arrow)),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: SizedBox(
                              child: IconButton(
                                  onPressed: () {}, icon: Icon(Icons.skip_next)),
                            ),
                          )
                        ],
                      )
                    : Container(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newURL.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100,
                      width: 35,
                      child: Image.asset(
                        newURL[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
          PlayerPosition(player: widget.gameMatch.players[0]),
          PlayerPosition(player: widget.gameMatch.players[1]),
          PlayerPosition(player: widget.gameMatch.players[2]),
          PlayerPosition(player: widget.gameMatch.players[3]),
          //PositionCard(type: listCard.[1]., angle: angle, imgURl: imgURl, indexCard: indexCard, sigX: sigX, sigY: sigY)
        ])
            //       : Center(
            //           child: TextButton(
            //               style: ButtonStyle(),
            //               onPressed: startGame,
            //               child: const Text(
            //                 "Bắt đầu",
            //                 style:
            //                     TextStyle(fontFamily: "Aviano", color: Colors.white),
            //               )),
            //         ),
            ),
      ),
    );
  }
}
