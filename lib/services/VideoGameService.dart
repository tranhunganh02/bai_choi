import 'dart:ffi';
import 'dart:math';

import 'package:bai_choi/services/ListService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../model/Cards.dart';
import '../model/Player.dart';
import '../model/Song.dart';

class VideoGameServices {
  Random random = Random();
  var logger = Logger();

  ListService LS = ListService();


  List<List<Song>> getRandomListSong(int maxRound) {
    List<List<Song>> songLists = LS.getAllSongList();
    logger.e("SongListLenght: ${songLists.length}");
    List<List<Song>> randomSongList = [];
    randomSongList.add(introList);

    for (int i = 0; i < maxRound; i++) {
      int randomIndex = random.nextInt(songLists.length);
      randomSongList.add(songLists.removeAt(randomIndex));
    }

    randomSongList.add(outroList);
    logger.i(randomSongList.length);

    return randomSongList;
  }

  List<Song> getRandomSong(List<List<Song>> listSong) {
    List<Song> songList = [];
    for (var list in listSong) {
      var tempList = List.of(list);
      int randomIndex = random.nextInt(tempList.length);
      songList.add(tempList.removeAt(randomIndex));
    }
    return songList;
  }

  int isMatchCard(Cardss? card, List<Player> players) {
    for (var player in players) {
      if (player.cards.contains(card)) {
        return player.id;
      }
    }
    return -1;
  }

  int checkWinCondition(List<Player> players) {
    List<int> scoreList = players.map((player) => player.score).toList();

    int maxScore = scoreList.reduce((currentMax, element) =>
    currentMax > element ? currentMax : element);

    int maxElement = scoreList.fold(scoreList[0], (currentMax, element) =>
    currentMax > element
        ? currentMax
        : element);

    int countMax = scoreList
        .where((element) => element == maxElement)
        .length;
    print("maxScore = $maxScore");
    print("maxElement = $maxElement");
    print("countMax = $countMax");

    if (countMax == 1 || maxScore == 3) {
      return scoreList.indexOf(maxScore);
    }else{
      print("Đã return -1");
      return -1;
    }
  }

  int isWin(List<Player> players) {

    for (Player player in players){
      if (player.score==3){
        return 1;
      }
    }
    return -1;
  }


}