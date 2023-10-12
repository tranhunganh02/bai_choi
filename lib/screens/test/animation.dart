import 'package:flutter/material.dart';

class AnimatedRotationImage extends StatefulWidget {

  final String imgURL;

  const AnimatedRotationImage({super.key, required this.imgURL});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedRotationImageState createState() => _AnimatedRotationImageState();
}

class _AnimatedRotationImageState extends State<AnimatedRotationImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration:const Duration(seconds: 1),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.imgURL))),

      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}