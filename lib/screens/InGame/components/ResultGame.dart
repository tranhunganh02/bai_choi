import 'package:flutter/material.dart';

import '../../../model/Gift.dart';
import '../../../model/Player.dart';
import 'package:bai_choi/utils/routes.dart' as routes;

void showMatchResult(Player player, int flagResult, BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        if (flagResult != -1) {
          return AlertDialog(
            title: const Text("Kết quả"),
            content: Container(
              child: Text(
                  "${player.playerName.toUpperCase()} chiến thắng. Chúc mừng bạn đã nhận được phần quà!",),
            ),
            actions: [
              TextButton(
                  onPressed: () =>
                      Navigator.popUntil(context, (route) => route.isFirst),
                  child: const Text("Về màn hình chính")),
              TextButton(
                  onPressed: () => Navigator.pushNamed(
                      context, routes.enterPlayerNameScreen),
                  child: const Text("Chơi lại"))
            ],
          );
        } else {
          return AlertDialog(
            title: const Text("Kết quả"),
            content: const Text("Hòa"),
            actions: [
              TextButton(
                  onPressed: () =>
                      Navigator.popUntil(context, (route) => route.isFirst),
                  child: const Text("Về màn hình chính")),
              TextButton(
                  onPressed: () => Navigator.pushNamed(
                      context, routes.enterPlayerNameScreen),
                  child: const Text("Chơi lại"))
            ],
          );
        }
      });
}
