import 'package:flutter/material.dart';
class PositionCard extends StatefulWidget {
  final int indexCard;
  final int type;
  final double angle;
  final String imgURl;
  final double sigX;
  final double sigY;
  const PositionCard({super.key, required this.type, required this.angle, required this.imgURl, required this.indexCard, required this.sigX, required this.sigY});

  @override
  State<PositionCard> createState() => _PositionCardState();
}

class _PositionCardState extends State<PositionCard>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool _isZoomed = false;
//   double radians = 0.0174533;
//   bool _videoInitialized = false;
  late int selectedId = -1;
  @override
  void initState() {
    FadeImageController();
    super.initState();
  }

  void _selectIndex(int index) {
   if (index!= selectedId) {
      setState(() {
      _isZoomed = !_isZoomed;  
      selectedId = index;
      print("select ${selectedId} ");
    });
   }
   else{
             print("select ${index} ");
       _toggleZoom();
   }
 
  }

  void _toggleZoom() {
    setState(() {
      _isZoomed = !_isZoomed;
    });
    print("trang thai ${_isZoomed}");
  }

  // ignore: non_constant_identifier_names
  void FadeImageController() {
    _controller = AnimationController(
      vsync: this,
      duration:
          const Duration(seconds: 5), // Độ dài của animation (1 giây ở đây)
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.type == 1) {
      return  AnimatedCardBottomLeft(widget.indexCard, widget.sigX, widget.sigY, widget.angle, widget.imgURl);
    } else if(widget.type == 2){
      return AnimatedCardBottomRight(widget.indexCard, widget.sigX, widget.sigY, widget.angle, widget.imgURl);
    } else if(widget.type == 3){
      return AnimatedCardTopRight(widget.indexCard, widget.sigX, widget.sigY, widget.angle, widget.imgURl);
    } else {
      return AnimatedCardTopLeft(widget.indexCard, widget.sigX, widget.sigY, widget.angle, widget.imgURl);
    }
  }

  AnimatedPositioned AnimatedCardTopLeft(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed==true && selectedId == index ? 195 : 125,
      width: _isZoomed==true && selectedId == index ? 90 : 55,
      top: _isZoomed==true && selectedId == index ? 40 : sigX,
      left: _isZoomed==true && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
          angle: _isZoomed==true && selectedId == index ? 0 : angle,
          child: ImageCard(index, imgURL)),
    );
  }

  AnimatedPositioned AnimatedCardBottomLeft(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed==true && selectedId == index ? 195 : 125,
      width: _isZoomed==true && selectedId == index ? 90 : 55,
      bottom: _isZoomed==true && selectedId == index ? 40 : sigX,
      left: _isZoomed==true && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
          angle: _isZoomed==true && selectedId == index ? 0 : angle,
          child: ImageCard(index, imgURL)),
    );
  }

  AnimatedPositioned AnimatedCardTopRight(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed && selectedId == index ? 195 : 125,
      width: _isZoomed && selectedId == index ? 90 : 55,
      top: _isZoomed && selectedId == index ? 40 : sigX,
      right: _isZoomed && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
        angle: _isZoomed && selectedId == index ? 0 : angle,
        child: ImageCard(index, imgURL),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AnimatedPositioned AnimatedCardBottomRight(
      int index, double sigX, double sigY, double angle, String imgURL) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 950),
      curve: Curves.easeInOut,
      height: _isZoomed && selectedId == index ? 195 : 125,
      width: _isZoomed && selectedId == index ? 90 : 55,
      bottom: _isZoomed && selectedId == index ? 40 : sigX,
      right: _isZoomed && selectedId == index ? 150 : sigY,
      child: Transform.rotate(
          angle: _isZoomed && selectedId == index ? 0 : angle,
          child: ImageCard(index, imgURL)),
    );
  } //

  GestureDetector ImageCard(int index, String imgURL) {
    return GestureDetector(
        onTap: () => _selectIndex(index),
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgURL))),
          ),
        ));
  }
}
