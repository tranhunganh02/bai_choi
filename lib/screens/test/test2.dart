// import 'package:bai_choi/model/Cards.dart';
// import 'package:bai_choi/services/RoomServices.dart';
// import 'package:flutter/material.dart';

// class RoomScreen extends StatefulWidget {
//   @override
//   State<RoomScreen> createState() => _RoomScreenState();
// }

// class _RoomScreenState extends State<RoomScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedRectangles();
//   }
// }

// class AnimatedRectangles extends StatefulWidget {
//   @override
//   _AnimatedRectanglesState createState() => _AnimatedRectanglesState();
// }

// class _AnimatedRectanglesState extends State<AnimatedRectangles>
//     with SingleTickerProviderStateMixin {
//   bool _isZoomed =false;
//   late int selectedId;
//   late bool getData = false;
//     late AnimationController _controller;
//   late Animation<double> _animation;
//   RoomServices Rs = RoomServices();
//   List<Cardss> listCard = [];
//   Future<void> _generateRandomNumbers() async {
//     print("hihiihih");
//     List<Cardss> listCards = await Rs.getRandomCardsWithTypes(3);
//     setState(() {
//       getData = true;
//        listCard = listCards ;
//     });
//   }

//   // ignore: non_constant_identifier_names
//   void FadeImageController() {
//     _controller = AnimationController(
//       vsync: this,
//       duration:
//           const Duration(seconds: 5), // Độ dài của animation (1 giây ở đây)
//     );

//     _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
//     _controller.forward();
//   }

//   void _selectIndex(int index) {
//     setState(() {
//       selectedId = index;
//     });
//     _toggleZoom();
//   }

//   void _toggleZoom() {
//     setState(() {
//       _isZoomed = !_isZoomed;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _generateRandomNumbers().then((_) {
//         print("lay thanh cong");
//         FadeImageController();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Theme.of(context).colorScheme.primary,
//       child: Center(
//           child: getData ? Stack(
//       alignment: Alignment.center,
//       children: [
//         ListView.builder(
//           itemCount: 3,
//           itemBuilder: (BuildContext context, int index) {
//             return Row(
//               children: [
//                 AnimatedCardBottomLeft(
//                     15, 10, -15, 0.35, listCard[index].cardURL),
//                 AnimatedCardBottomLeft(
//                     3, -10, 15, 0.78, listCard[index].cardURL),
//                 AnimatedCardBottomLeft(
//                     1, -45, 35, 1.22, listCard[index].cardURL),
//               ],
//             );
//           },
//         ),
//       ],
//           ) : Text("loading")
//       ),
//     );
//   }

//  AnimatedPositioned AnimatedCardBottomLeft(
//       int index, double sigX, double sigY, double angle, String imgURL) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 950),
//       curve: Curves.easeInOut,
//       height: _isZoomed && selectedId == index ? 210 : 125,
//       width: _isZoomed && selectedId == index ? 90 : 55,
//       bottom: _isZoomed && selectedId == index ? 15 : sigX,
//       left: _isZoomed && selectedId == index ? 150 : sigY,
//       child: Transform.rotate(
//           angle: _isZoomed && selectedId == index ? 0 : angle,
//           child: ImageCard(index, imgURL)),
//     );
//   }
//   GestureDetector ImageCard(int index, String imgURL) {
//     return GestureDetector(
//         onTap: () => _selectIndex(index),
//         child: FadeTransition(
//           opacity: _animation,
//           child: Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(image: AssetImage(imgURL))),
//           ),
//         ));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

import 'package:bai_choi/model/Cards.dart';
import 'package:bai_choi/services/RoomServices.dart';
import 'package:flutter/material.dart';
import 'components/PositionCard.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomSrcennState();
}

class _RoomSrcennState extends State<RoomScreen> with TickerProviderStateMixin {
  bool getData = false;
  bool _isZoomed = false;
  List<Cardss> listCard = [];
  RoomServices RS = RoomServices();
  late int selectedId;
  late AnimationController _controller;
  late Animation<double> _animation;

  Future<List<Cardss>> getD() async {
    List<Cardss> abc = await RS.getRandomCardsWithTypes(12);
    setState(() {
      listCard = abc;
    });
    print(abc);
    return abc;
  }

  void startGame() {
    setState(() {
      getData = true;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    getD();
    super.initState();
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
              PositionCard(type: 1, angle: 0.35, imgURl: listCard[0].cardURL, indexCard: listCard[0].id, sigX: 10, sigY: -15),
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
