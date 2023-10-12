import 'dart:math';

import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Rectangles'),
        ),
        body: Center(
          child: AnimatedRectangles(),
        ),
      ),
    );
  }
}

class AnimatedRectangles extends StatefulWidget {
  @override
  _AnimatedRectanglesState createState() => _AnimatedRectanglesState();
}

class _AnimatedRectanglesState extends State<AnimatedRectangles> with SingleTickerProviderStateMixin {
 late AnimationController _controller;
 late Animation<Offset> _animation;

  List<int> _randomNumbers = [];

  Future<void> _generateRandomNumbers() async {
    for (int i = 0; i < 12; i++) {
      int random = await fetchRandomNumber();
      setState(() {
        _randomNumbers.add(random);
      });
    }
  }

  Future<int> fetchRandomNumber() async {
    await Future.delayed(Duration(seconds: 2));
    return Random().nextInt(100);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(1, 1),
    ).animate(_controller);

    _generateRandomNumbers().then((_) {
      _controller.forward(); // Bắt đầu animation sau khi đã có danh sách số ngẫu nhiên
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: List.generate(_randomNumbers.length, (index) {
            int number = _randomNumbers[index];
            double xOffset = _animation.value.dx * MediaQuery.of(context).size.width / 2;
            double yOffset = _animation.value.dy * MediaQuery.of(context).size.height / 2;

            return Positioned(
              left: index % 2 == 0 ? xOffset : null,
              right: index % 2 != 0 ? xOffset : null,
              top: index < 6 ? yOffset : index-3  ,
              bottom: index >= 24 ? yOffset : index-3  ,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    '$number',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
