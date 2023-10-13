
import 'package:bai_choi/model/Player.dart';
import 'package:bai_choi/screens/test/components/PlayerPosition.dart';
import 'package:bai_choi/services/ModeGameServices.dart';
import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  final List<Player> listPlayer;
  const RoomScreen({super.key, required this.listPlayer});

  @override
  State<RoomScreen> createState() => _RoomSrcennState();
}

class _RoomSrcennState extends State<RoomScreen> with TickerProviderStateMixin {

  bool getData = false;
  ModeGameServices RS = ModeGameServices();
  late int selectedId;

  void startGame() {
    setState(() {
      getData = true;
    });
  }

//   Future<void> showModal() async {
//     // OverlayEntry overlayEntry = OverlayEntry(
//     //   builder: (context) => Center(
//     //     child: Positioned(
//     //       height: 150,
//     //       width: 50,
//     //       //curve: Curves.easeInOut,
//     //       //   child: Container(
//     //       //     height: 100,
//     //       //     width: 40,
//     //       //   child: AnimatedRotationImage(imgURL: listCardVawn[currentVideoIndex].cardURL,)
//     //       // ),
//     //       child: SizedBox(
//     //         height: 150,
//     //         width: 50,
//     //           child: Image.asset(listCardSach[currentVideoIndex].cardURL)),
//     //     ),
//     //   ),
//     // );

//     // // Insert the overlay entry
//     // Overlay.of(context).insert(overlayEntry);

//     // Delay for a few seconds, then remove the overlay
//     Future.delayed(const Duration(seconds: 5), () {
//       //overlayEntry.remove();
//       playNextVideo();
//     });
//   }
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
            ? Stack(
              alignment: Alignment.center,
              children: [
              PlayerPosition(player: widget.listPlayer[0]),
              PlayerPosition(player: widget.listPlayer[1]),
              PlayerPosition(player: widget.listPlayer[2]),
              PlayerPosition(player: widget.listPlayer[3]),
             //PositionCard(type: listCard.[1]., angle: angle, imgURl: imgURl, indexCard: indexCard, sigX: sigX, sigY: sigY)
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
                        
                     child:    Container(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 0.1)),
                  ),
                ]),
              )
            
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
