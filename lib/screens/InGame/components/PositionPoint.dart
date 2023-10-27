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
              bottom: 20,
              left: MediaQuery.of(context).size.width / 3,
              child: AnimatedSize(
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  decoration: BoxDecoration(
                      color: widget.score >= 1
                          ? const Color.fromARGB(255, 73, 146, 76)
                          : Color(0xFFB22A21),
                      border: widget.score >= 1
                          ? const Border.symmetric(
                              vertical: BorderSide(width: 0.4))
                          : null),
                ),
              )),
          Positioned(
              height: 15,
              width: 35,
              bottom: 20,
              left: MediaQuery.of(context).size.width / 3 + 30,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: widget.score >= 2
                        ? const Color.fromARGB(255, 73, 146, 76)
                        : Color(0xFFB22A21),
                    border: widget.score >= 2
                        ? const Border.symmetric(
                            vertical: BorderSide(width: 0.4))
                        : null),
              )),
          Positioned(
              height: 15,
              width: 35,
              bottom: 20,
              left: MediaQuery.of(context).size.width / 3 + 60,
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: widget.score == 3
                        ? const Color.fromARGB(255, 73, 146, 76)
                        : Color(0xFFB22A21),
                    border: widget.score == 3
                        ? const Border.symmetric(
                            vertical: BorderSide(width: 0.4))
                        : null),
              )),
        ],
      );
    } else if (widget.typePLayer == 2) {
        return Stack(
      children: [
        Positioned(
            height: 15,
            width: 35,
            bottom: 20,
            right: MediaQuery.of(context).size.width / 3,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                decoration: BoxDecoration(
                    color: widget.score >= 1
                        ? const Color.fromARGB(255, 73, 146, 76)
                        : Color(0xFFB22A21),
                    border: widget.score >= 1
                        ? const Border.symmetric(
                            vertical: BorderSide(width: 0.4))
                        : null),
              ),
            )),
        Positioned(
            height: 15,
            width: 35,
            bottom: 20,
            right: MediaQuery.of(context).size.width / 3 + 30,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: widget.score >= 2
                      ? const Color.fromARGB(255, 73, 146, 76)
                      : Color(0xFFB22A21),
                  border: widget.score >= 2
                      ? const Border.symmetric(vertical: BorderSide(width: 0.4))
                      : null),
            )),
        Positioned(
            height: 15,
            width: 35,
            bottom: 20,
            right: MediaQuery.of(context).size.width / 3+ 60,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: widget.score == 3
                      ? const Color.fromARGB(255, 73, 146, 76)
                      : Color(0xFFB22A21),
                  border: widget.score == 3
                      ? const Border.symmetric(vertical: BorderSide(width: 0.4))
                      : null),
            )),
      ],
    );
    }else if(widget.typePLayer == 3){
      return Stack(
      children: [
        Positioned(
            height: 15,
            width: 35,
            top: 20,
            right: MediaQuery.of(context).size.width / 3 + 15,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                decoration: BoxDecoration(
                    color: widget.score >= 1
                        ? const Color.fromARGB(255, 73, 146, 76)
                        : Color(0xFFB22A21),
                    border: widget.score >= 1
                        ? const Border.symmetric(
                            vertical: BorderSide(width: 0.4))
                        : null),
              ),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 20,
            right: MediaQuery.of(context).size.width / 3 + 30,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: widget.score >= 2
                      ? const Color.fromARGB(255, 73, 146, 76)
                      : Color(0xFFB22A21),
                  border: widget.score >= 2
                      ? const Border.symmetric(vertical: BorderSide(width: 0.4))
                      : null),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 20,
            right: MediaQuery.of(context).size.width / 3 + 70,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: widget.score == 3
                      ? const Color.fromARGB(255, 73, 146, 76)
                      : Color(0xFFB22A21),
                  border: widget.score == 3
                      ? const Border.symmetric(vertical: BorderSide(width: 0.4))
                      : null),
            )),
      ],
    );
    }else {
      return Stack(
      children: [
        Positioned(
            height: 15,
            width: 35,
            top: 20,
            left: MediaQuery.of(context).size.width / 3 + 15,
            child: AnimatedSize(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                decoration: BoxDecoration(
                    color: widget.score >= 1
                        ? const Color.fromARGB(255, 73, 146, 76)
                        : Color(0xFFB22A21),
                    border: widget.score >= 1
                        ? const Border.symmetric(
                            vertical: BorderSide(width: 0.4))
                        : null),
              ),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 20,
            left: MediaQuery.of(context).size.width / 3 + 30,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: widget.score >= 2
                      ? const Color.fromARGB(255, 73, 146, 76)
                      : Color(0xFFB22A21),
                  border: widget.score >= 2
                      ? const Border.symmetric(vertical: BorderSide(width: 0.4))
                      : null),
            )),
        Positioned(
            height: 15,
            width: 35,
            top: 20,
            left: MediaQuery.of(context).size.width / 3 + 60,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: widget.score == 3
                      ? const Color.fromARGB(255, 73, 146, 76)
                      : Color(0xFFB22A21),
                  border: widget.score == 3
                      ? const Border.symmetric(vertical: BorderSide(width: 0.4))
                      : null),
            )),
      ],
    );
    }
  }
}
