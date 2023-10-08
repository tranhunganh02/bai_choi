
import 'package:flutter/material.dart';
import 'package:bai_choi/model/Card.dart';
class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  List a = [30, 45, 60];
  bool _isZoomed = false;
  double radians = 0.0174533;
  late int selectedId;
  // ignore: unused_element
  void _selectIndex(int index) {
    setState(() {
      selectedId = index;
    });
    _toggleZoom();
  }

  void _toggleZoom() {
    setState(() {
      _isZoomed = !_isZoomed;
    });
  }

  // int _currentSeconds = 10;
  // int _startSeconds = 10;
  // late Timer _timer;

  // void _startTimer() {
  //   _timer = Timer.periodic(Duration(seconds: 1), (timer) {
  //     setState(() {
  //       if (_currentSeconds > 0) {
  //         _currentSeconds--;
  //       } else {
  //         timer
  //             .cancel(); // Dừng timer khi đếm ngược về 0 // Thiết lập lại thời gian sau khi đếm ngược về 0
  //         _currentSeconds = 10;
  //       }
  //     });
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
    // //_timer.cancel();
    // _controller.dispose();
// Dừng timer khi widget bị huỷ
  }

  @override
  void initState() {
    super.initState();
    //_startTimer();
    // _controller = VideoPlayerController.asset("assets/video/ho1.mp4")
    //   ..initialize().then((_) {
    //     _controller.play();
    //     setState(() {});
    //   });
    // Initialize the controller and store the Future for later use.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            //top-left
            AnimatedCardTopLeft(7, 10, -15, 2.79, listCardSach[4].cardURL),
            AnimatedCardTopLeft(6, -10, 15, 2.35, listCardSach[7].cardURL),
            AnimatedCardTopLeft(8, -45, 35, 1.92, listCardSach[2].cardURL),

            AnimatedCardTopRight(12, 10, -15, 3.49, listCardVawn[6].cardURL),
            AnimatedCardTopRight(5, -10, 15, 3.92, listCardSach[8].cardURL),
            AnimatedCardTopRight(10, -45, 35, 4.36, listCardVan[4].cardURL),

            //bottom-left
            AnimatedCardBottomLeft(15, 10, -15, 0.35, listCardVan[1].cardURL),
            AnimatedCardBottomLeft(3, -10, 15, 0.78, listCardVan[2].cardURL),
            AnimatedCardBottomLeft(1, -45, 35, 1.22, listCardVan[0].cardURL),

            AnimatedCardBottomRight(20, 10, -15, 5.93, listCardVawn[5].cardURL),
            AnimatedCardBottomRight(1, -10, 15, 5.49, listCardVawn[9].cardURL),
            AnimatedCardBottomRight(2, -45, 35, 5.06, listCardVawn[3].cardURL),

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
                  //     ? AspectRatio(
                  //         aspectRatio: _controller.value.aspectRatio,
                  //         child: VideoPlayer(_controller),
                  //       )
                  //     :
                  //Container(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black, width: 1)),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AnimatedPositioned AnimatedCardTopLeft(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed && selectedId == index ? 210 : 125,
      width: _isZoomed && selectedId == index ? 90 : 55,
      top: _isZoomed && selectedId == index ? 15 : sigX,
      left: _isZoomed && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
        angle: _isZoomed && selectedId == index ? 0 : angle,
        child: GestureDetector(
            onTap: () => _selectIndex(index),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgURL), fit: BoxFit.fill)),
            )),
      ),
    );
  }

  AnimatedPositioned AnimatedCardBottomLeft(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed && selectedId == index ? 210 : 125,
      width: _isZoomed && selectedId == index ? 90 : 55,
      bottom: _isZoomed && selectedId == index ? 15 : sigX,
      left: _isZoomed && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
        angle: _isZoomed && selectedId == index ? 0 : angle,
        child: GestureDetector(
            onTap: () => _selectIndex(index),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgURL), fit: BoxFit.fill)),
            )),
      ),
    );
  }

  AnimatedPositioned AnimatedCardTopRight(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed && selectedId == index ? 210 : 125,
      width: _isZoomed && selectedId == index ? 90 : 55,
      top: _isZoomed && selectedId == index ? 15 : sigX,
      right: _isZoomed && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
        angle: _isZoomed && selectedId == index ? 0 : angle,
        child: GestureDetector(
            onTap: () => _selectIndex(index),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgURL), fit: BoxFit.fill)),
            )),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AnimatedPositioned AnimatedCardBottomRight(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed && selectedId == index ? 210 : 125,
      width: _isZoomed && selectedId == index ? 90 : 55,
      bottom: _isZoomed && selectedId == index ? 15 : sigX,
      right: _isZoomed && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
        angle: _isZoomed && selectedId == index ? 0 : angle,
        child: GestureDetector(
            onTap: () => _selectIndex(index),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgURL), fit: BoxFit.fill)),
            )),
      ),
    );
  }
}
