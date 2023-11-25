import 'package:flutter/material.dart';

class BlinkingStar extends StatefulWidget {
  final int type;
  final int status;
  final double sigX, sigY;

  const BlinkingStar(
      {super.key,
      required this.type,
      required this.status,
      required this.sigX,
      required this.sigY});
  @override
  _BlinkingStarState createState() => _BlinkingStarState();
}

class _BlinkingStarState extends State<BlinkingStar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    @override
    void dispose() {
      _controller.dispose();
      _animation.isCompleted;
      super.dispose();
    }

    if (widget.status == 1) {
      if (widget.type == 1) {
        return Positioned(
          bottom: widget.sigX,
          left: widget.sigY,
          child: Star(),
        );
      } else if (widget.type == 2) {
        return Positioned(
            bottom: widget.sigX, right: widget.sigY, child: Star());
      } else if (widget.type == 3) {
        return Positioned(top: widget.sigX, right: widget.sigY, child: Star());
      } else {
        return Positioned(top: widget.sigX, left: widget.sigY, child: Star());
      }
    } else {
      return Container();
    }
  }

  // ignore: non_constant_identifier_names
  AnimatedBuilder Star() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Icon(
          Icons.star_rounded,
          size: 30.0,
          color: Colors.yellow.withOpacity(_animation.value),
        );
      },
    );
  }
}
