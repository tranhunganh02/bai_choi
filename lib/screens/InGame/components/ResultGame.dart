 
 
  import 'package:flutter/material.dart';

import '../../../model/Player.dart';

void showMatchResult(Player player, int flagResult, BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          if (flagResult != -1) {
            return AlertDialog(
              title: const Text("Kết quả"),
              content: Text("${player.playerName} chiến thắng"),
              actions: [
                TextButton(
                    onPressed: () {}, child: const Text("Về màn hình chính")),
                TextButton(onPressed: () {}, child: const Text("Chơi lại"))
              ],
            );
          } else {
            return AlertDialog(
              title: const Text("Kết quả"),
              content: const Text("Hòa"),
              actions: [
                TextButton(
                    onPressed: () {}, child: const Text("Về màn hình chính")),
                TextButton(onPressed: () {}, child: const Text("Chơi lại"))
              ],
            );
          }
        });
  }