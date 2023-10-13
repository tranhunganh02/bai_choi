// import 'dart:async';
// import 'dart:math';

// import 'package:bai_choi/screens/test/animation.dart';
// import 'package:provider/provider.dart';
// import 'package:video_player/video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:bai_choi/model/Cards.dart';
// import 'package:bai_choi/view_models/Room_view_model.dart';

// class RoomScreen extends StatefulWidget {
//   const RoomScreen({super.key});

//   @override
//   State<RoomScreen> createState() => _RoomScreenState();
// }

// class _RoomScreenState extends State<RoomScreen> with TickerProviderStateMixin, ChangeNotifier {
//   bool _isZoomed = false;
//   double radians = 0.0174533;
//   bool _videoInitialized = false;
//   late int selectedId;

//   late VideoPlayerController _videoPlayerController;

//   late AnimationController _controller;
//   late Animation<double> _animation;

//   // ignore: unused_element
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
//   void dispose() {
//     _videoPlayerController.dispose();
//     _controller.dispose();
//     super.dispose();
//   }

//   List<String> videoPaths = [
//     'assets/video/ho1.mp4',
//     'assets/video/ho2.mp4',
//     'assets/video/ho3.mp4',
//   ];
//   int currentVideoIndex = 0;

//   @override
//   void initState() {
//     //FadeImageController();
//     super.initState();
//   }

//   // ignore: non_constant_identifier_names
//   void FadeImageController() {
//     _controller = AnimationController(
//       vsync: this,
//       duration:
//           const Duration(seconds: 5), // Độ dài của animation (1 giây ở đây)
//     );

//     _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
//     _controller.forward().whenComplete(() => VideoController());
//   }

//   // ignore: non_constant_identifier_names
//   void VideoController() {
//     _videoPlayerController =
//         VideoPlayerController.asset(videoPaths[currentVideoIndex])
//           ..initialize().then((_) {
//             setState(() {
//               _videoInitialized = true;
//               _videoPlayerController.play();
//               _videoPlayerController.addListener(_videoListener);
//             });
//           });
//   }

//   void _videoListener() async {
//     if (_videoPlayerController.value.position >=
//         _videoPlayerController.value.duration) {
//       // Video has finished playing
//       print("het bai $currentVideoIndex");
//       await showModal();
//     }
//   }

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

//   Future<void> playNextVideo() async {
//     if (currentVideoIndex < videoPaths.length - 1) {
//       currentVideoIndex = currentVideoIndex + 1;
//       _videoPlayerController.pause(); // Pause the current video
//       _videoPlayerController.dispose(); // Dispose the current controller
//       _videoPlayerController =
//           VideoPlayerController.asset(videoPaths[currentVideoIndex])
//             ..initialize().then((_) {
//               setState(() {
//                 _videoPlayerController.play();
//                 _videoPlayerController.addListener(_videoListener);
//               });
//             });
//     } else {
//       // All videos have been played
//       print('All videos played!');
//       _videoPlayerController.dispose(); // Close the VideoPlayerController
//     }
//   }

// Widget build(BuildContext context) {

//   RoomViewModel roomViewModel = context.watch<RoomViewModel>();
//     return Provider<RoomViewModel>(
//       create: (_) => RoomViewModel(),
//       // Will throw a ProviderNotFoundError, because `context` is associated
//       // to the widget that is the parent of `Provider<Example>`
//       child: ,
//     );
//   }
//   // @override
//   // Widget build(BuildContext context) {
//   //   RoomViewModel roomViewModel = context.watch<RoomViewModel>();

//   //   // ignore: no_leading_underscores_for_local_identifiers
//   //   _ui(RoomViewModel roomViewModel) {
//   //             List<Cardss> randomCards = [];
//   //       randomCards = roomViewModel.getRandomCardsWithTypes(3);
//   //     if (roomViewModel.loading) {
//   //       // ignore: unused_local_variable
//   //       return Center(
//   //         child: Stack(
//   //           alignment: Alignment.center,
//   //           children: [
//   //             ListView.builder(
//   //               itemCount: randomCards.length,
//   //               itemBuilder: (BuildContext context, int index) {
//   //                 return Row(
//   //                   children: [
//   //                     AnimatedCardBottomLeft(
//   //                         15, 10, -15, 0.35, randomCards[index].cardURL),
//   //                     AnimatedCardBottomLeft(
//   //                         3, -10, 15, 0.78, listCardVan[index+1].cardURL),
//   //                     AnimatedCardBottomLeft(
//   //                         1, -45, 35, 1.22, listCardVan[index+2].cardURL),
//   //                   ],
//   //                 );
//   //               },
//   //             ),
//   //           ],
//   //         ),
//   //       );

//   //       //   return Center(
//   //       //   child: Stack(
//   //       //     alignment: Alignment.center,
//   //       //     children: [
//   //       //       //top-left
//   //       //       // AnimatedCardTopLeft(7, 10, -15, 2.79, listCardSach[4].cardURL),
//   //       //       // AnimatedCardTopLeft(6, -10, 15, 2.35, listCardSach[7].cardURL),
//   //       //       // AnimatedCardTopLeft(8, -45, 35, 1.92, listCardSach[2].cardURL),

//   //       //       // AnimatedCardTopRight(12, 10, -15, 3.49, listCardVawn[6].cardURL),
//   //       //       // AnimatedCardTopRight(5, -10, 15, 3.92, listCardSach[8].cardURL),
//   //       //       // AnimatedCardTopRight(10, -45, 35, 4.36, listCardVan[4].cardURL),

//   //       //       // //bottom-left
//   //       //       // AnimatedCardBottomLeft(15, 10, -15, 0.35, listCardVan[1].cardURL),
//   //       //       // AnimatedCardBottomLeft(3, -10, 15, 0.78, listCardVan[2].cardURL),
//   //       //       // AnimatedCardBottomLeft(1, -45, 35, 1.22, listCardVan[0].cardURL),

//   //       //       AnimatedCardBottomRight(20, 10, -15, 5.93, listCardVawn[5].cardURL),
//   //       //       AnimatedCardBottomRight(1, -10, 15, 5.49, listCardVawn[9].cardURL),
//   //       //       AnimatedCardBottomRight(2, -45, 35, 5.06, listCardVawn[3].cardURL),

//   //       //       AnimatedPositioned(
//   //       //         duration: const Duration(seconds: 1),
//   //       //         curve: Curves.easeInOut,
//   //       //         height: MediaQuery.of(context).size.height * 0.75,
//   //       //         width: MediaQuery.of(context).size.width * 0.38,
//   //       //         child: Column(children: [
//   //       //           Container(
//   //       //             height: MediaQuery.of(context).size.height * 0.35,
//   //       //             width: double.maxFinite,
//   //       //             decoration: BoxDecoration(
//   //       //               borderRadius: BorderRadius.circular(10),
//   //       //               border: Border.all(color: Colors.yellow, width: 5),
//   //       //               color: Theme.of(context).colorScheme.surface,
//   //       //             ),
//   //       //             // child: _videoPlayerController.value.isInitialized
//   //       //             child: _videoInitialized
//   //       //                 ? AspectRatio(
//   //       //                     aspectRatio: _videoPlayerController.value.aspectRatio,
//   //       //                     child: VideoPlayer(_videoPlayerController),
//   //       //                   )
//   //       //                 : Container(),
//   //       //           ),
//   //       //           Container(
//   //       //             height: MediaQuery.of(context).size.height * 0.3,
//   //       //             width: double.maxFinite,
//   //       //             decoration: BoxDecoration(
//   //       //                 borderRadius: BorderRadius.circular(50),
//   //       //                 border: Border.all(color: Colors.black, width: 0.1)),
//   //       //           ),
//   //       //         ]),
//   //       //       )
//   //       //     ],
//   //       //   ),
//   //       // );
//   //     } else {
//   //       return const Center(
//   //         child: Text("loading"),
//   //       );
//   //     }
//   //   }

//   //   return Container(
//   //       color: Theme.of(context).colorScheme.primary,
//   //       child: _ui(roomViewModel));
//   // }

//   // ignore: non_constant_identifier_names
//   AnimatedPositioned AnimatedCardTopLeft(
//       int index, double sigX, double sigY, double angle, String imgURL) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 950),
//       curve: Curves.easeInOut,
//       height: _isZoomed && selectedId == index ? 210 : 125,
//       width: _isZoomed && selectedId == index ? 90 : 55,
//       top: _isZoomed && selectedId == index ? 15 : sigX,
//       left: _isZoomed && selectedId == index ? 150 : sigY,
//       child: Transform.rotate(
//           angle: _isZoomed && selectedId == index ? 0 : angle,
//           child: ImageCard(index, imgURL)),
//     );
//   }

//   AnimatedPositioned AnimatedCardBottomLeft(
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

//   AnimatedPositioned AnimatedCardTopRight(
//       int index, double sigX, double sigY, double angle, String imgURL) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 950),
//       curve: Curves.easeInOut,
//       height: _isZoomed && selectedId == index ? 210 : 125,
//       width: _isZoomed && selectedId == index ? 90 : 55,
//       top: _isZoomed && selectedId == index ? 15 : sigX,
//       right: _isZoomed && selectedId == index ? 150 : sigY,
//       child: Transform.rotate(
//         angle: _isZoomed && selectedId == index ? 0 : angle,
//         child: ImageCard(index, imgURL),
//       ),
//     );
//   }

//   // ignore: non_constant_identifier_names
//   AnimatedPositioned AnimatedCardBottomRight(
//       int index, double sigX, double sigY, double angle, String imgURL) {
//     return AnimatedPositioned(
//       duration: const Duration(milliseconds: 950),
//       curve: Curves.easeInOut,
//       height: _isZoomed && selectedId == index ? 210 : 125,
//       width: _isZoomed && selectedId == index ? 90 : 55,
//       bottom: _isZoomed && selectedId == index ? 15 : sigX,
//       right: _isZoomed && selectedId == index ? 150 : sigY,
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
// }
