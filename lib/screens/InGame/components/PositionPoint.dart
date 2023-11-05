import 'package:flutter/material.dart';

class PositionPoint extends StatefulWidget {
  final int score;
  final int typePLayer;
  const PositionPoint(
      {super.key, required this.score, required this.typePLayer});

  @override
  State<PositionPoint> createState() => _PositionPointState();
}

class _PositionPointState extends State<PositionPoint> {
  @override
  Widget build(BuildContext context) {
    if (widget.typePLayer == 1) {
      return Stack(
        children: [
          Positioned(
              height: 15,
              width: 35,
              bottom: 22,
              left: MediaQuery.of(context).size.width / 3,
              child: AnimatedSize(
                duration: const Duration(milliseconds: 1000),
                child: widget.score >= 1 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
              )),
          Positioned(
              height: 15,
              width: 35,
              bottom: 22,
              left: MediaQuery.of(context).size.width / 3 + 30,
              child: Container(
                child: widget.score >= 2 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
              )),
          Positioned(
              height: 15,
              width: 35,
              bottom: 22,
              left: MediaQuery.of(context).size.width / 3 + 60,
              child: Container(
                child: widget.score >= 3 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
              )),
        ],
      );
    } else if (widget.typePLayer == 2) {
        return Stack(
      children: [
        Positioned(
            height: 15,
            width: 35,
            bottom: 22,
            right: MediaQuery.of(context).size.width / 3,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                child: widget.score >= 1 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
              ),
            )),
        Positioned(
            height: 15,
            width: 35,
            bottom: 22,
            right: MediaQuery.of(context).size.width / 3 + 30,
            child: Container(
             child: widget.score >= 2 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
            )),
        Positioned(
            height: 15,
            width: 35,
            bottom: 22,
            right: MediaQuery.of(context).size.width / 3+ 60,
            child: Container(
             child: widget.score >= 3 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
            )),
      ],
    );
    }else if(widget.typePLayer == 3){
      return Stack(
      children: [
        Positioned(
            height: 15,
            width: 35,
            top: 17,
            right: MediaQuery.of(context).size.width / 3 + 15,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              child: Container(
              child: widget.score >= 1 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
              ),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 17,
            right: MediaQuery.of(context).size.width / 3 + 30,
            child: Container(
             child: widget.score >= 2?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 17,
            right: MediaQuery.of(context).size.width / 3 + 70,
            child: Container(
             child: widget.score >= 3 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
            )),
      ],
    );
    }else {
      return Stack(
      children: [
        Positioned(
            height: 15,
            width: 35,
            top: 17,
            left: MediaQuery.of(context).size.width / 3 + 15,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              child: Container(
              child: widget.score >= 1 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
              ),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 17,
            left: MediaQuery.of(context).size.width / 3 + 30,
            child: Container(
             child: widget.score >= 2 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 17,
            left: MediaQuery.of(context).size.width / 3 + 60,
            child: Container(
             child: widget.score >= 3 ?const Icon(Icons.star_purple500_sharp , color: Colors.yellow,) : Container(),
            )),
      ],
    );
    }
  }
}
