import 'package:bai_choi/model/Player.dart';
import 'package:bai_choi/screens/InGame/components/PositionCard.dart';
import 'package:bai_choi/screens/InGame/components/PositionPoint.dart';
import 'package:flutter/material.dart';

class PlayerPosition extends StatefulWidget {
  final Player player;
  const PlayerPosition({super.key, required this.player});

  @override
  State<PlayerPosition> createState() => _PlayerPositionState();
}

class _PlayerPositionState extends State<PlayerPosition> {
  bool _isZoomed = false;

  late int selectedId = -1;

  void _selectIndex(int index) {
    setState(() {
      _isZoomed = !_isZoomed;
    });
  }

  void _toggleZoom() {
    setState(() {
      _isZoomed = !_isZoomed;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    print(widget.player.score);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.player.id == 1) {
      return Stack(
        alignment: Alignment.center,
        children: [
          PositionCard(
              type: 1,
              angle: 0.35,
              imgURl: widget.player.card[0].cardURL,
              indexCard: widget.player.card[0].id,
              sigX: 10,
              sigY: -15),
        BlinkingStar(type: 1, status: 1, sigX: 150, sigY: 25),
          PositionCard(
              type: 1,
              angle: 0.78,
              imgURl: widget.player.card[1].cardURL,
              indexCard: widget.player.card[1].id,
              sigX: -10,
              sigY: 15),
          BlinkingStar(type: 1, status: 0, sigX: 105, sigY: 95),
          PositionCard(
              type: 1,
              angle: 1.22,
              imgURl: widget.player.card[2].cardURL,
              indexCard: widget.player.card[2].id,
              sigX: -45,
              sigY: 35),
          BlinkingStar(type: 1, status: 0, sigX: 40, sigY: 135),
          Positioned(
            height: 25,
            width: 60,
            bottom: 12,
            left: 160,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              child: Text(
                widget.player.playerName,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Aviano',
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      );
    }
    if (widget.player.id == 2) {
      return Stack(
        alignment: Alignment.center,
        children: [
          PositionCard(
              type: 2,
              angle: 5.93,
              imgURl: widget.player.card[0].cardURL,
              indexCard: widget.player.card[0].id,
              sigX: 10,
              sigY: -15),
          BlinkingStar(type: 2, status: 0, sigX: 150, sigY: 25),
          PositionCard(
              type: 2,
              angle: 5.49,
              imgURl: widget.player.card[1].cardURL,
              indexCard: widget.player.card[1].id,
              sigX: -10,
              sigY: 15),
          BlinkingStar(type: 2, status: 0, sigX: 105, sigY: 95),
          PositionCard(
              type: 2,
              angle: 5.06,
              imgURl: widget.player.card[2].cardURL,
              indexCard: widget.player.card[2].id,
              sigX: -45,
              sigY: 35),
          BlinkingStar(type: 2, status: 0, sigX: 40, sigY: 135),
          Positioned(
            height: 25,
            width: 60,
            bottom: 12,
            right: 160,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              child: Text(
                widget.player.playerName,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Aviano',
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      );
    }
    if (widget.player.id == 3) {
      return Stack(
        alignment: Alignment.center,
        children: [
          PositionCard(
              type: 3,
              angle: 3.47,
              imgURl: widget.player.card[0].cardURL,
              indexCard: widget.player.card[0].id,
              sigX: 10,
              sigY: -15),
          BlinkingStar(type: 3, status: 0, sigX: 150, sigY: 25),

          //   //       //       // AnimatedCardTopRight(12, 10, -15, 3.49, listCardVawn[6].cardURL),
//   //       //       // AnimatedCardTopRight(5, -10, 15, 3.92, listCardSach[8].cardURL),
//   //       //       // AnimatedCardTopRight(10, -45, 35, 4.36, listCardVan[4].cardURL),
          PositionCard(
              type: 3,
              angle: 3.92,
              imgURl: widget.player.card[1].cardURL,
              indexCard: widget.player.card[1].id,
              sigX: -10,
              sigY: 15),

          BlinkingStar(type: 3, status: 0, sigX: 105, sigY: 95),
          PositionCard(
              type: 3,
              angle: 4.36,
              imgURl: widget.player.card[2].cardURL,
              indexCard: widget.player.card[2].id,
              sigX: -45,
              sigY: 35),

          BlinkingStar(type: 3, status: 0, sigX: 40, sigY: 135),
          Positioned(
            height: 25,
            width: 60,
            top: 12,
            right: 160,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              child: Text(
                widget.player.playerName,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Aviano',
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      );
    }

    if (widget.player.id == 4) {
      return Stack(
        alignment: Alignment.center,
        children: [
          PositionCard(
              type: 4,
              angle: 2.79,
              imgURl: widget.player.card[0].cardURL,
              indexCard: widget.player.card[0].id,
              sigX: 10,
              sigY: -15),
          BlinkingStar(type: 4, status: 0, sigX: 150, sigY: 25),

          // AnimatedCardTopLeft(7, 10, -15, 2.79, listCardSach[4].cardURL),
//   //       //       // AnimatedCardTopLeft(6, -10, 15, 2.35, listCardSach[7].cardURL),
          // AnimatedCardTopLeft(8, -45, 35, 1.92, listCardSach[2].cardURL),
          PositionCard(
              type: 4,
              angle: 2.35,
              imgURl: widget.player.card[1].cardURL,
              indexCard: widget.player.card[1].id,
              sigX: -10,
              sigY: 15),

          BlinkingStar(type: 4, status: 0, sigX: 105, sigY: 95),
          PositionCard(
              type: 4,
              angle: 1.92,
              imgURl: widget.player.card[2].cardURL,
              indexCard: widget.player.card[2].id,
              sigX: -45,
              sigY: 35),

          BlinkingStar(type: 4, status: 0, sigX: 40, sigY: 135),
          Positioned(
            height: 25,
            width: 60,
            top: 12,
            left: 160,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              child: Text(
                widget.player.playerName,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Aviano',
                  fontSize: 14,
                ),
              ),
            ),
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
