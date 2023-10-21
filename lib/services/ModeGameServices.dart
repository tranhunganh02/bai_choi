import 'dart:math';
import 'package:bai_choi/services/ListService.dart';
import 'package:flutter/cupertino.dart';

import '../model/Player.dart';
import '../model/Cards.dart';
import '../model/CardType.dart';
import '../model/GameMatch.dart';

class ModeGameServices {
  static List<CardType> cardTypes = [
    CardType.phoSach,
    CardType.phoVan,
    CardType.phoVawn
  ];

  ListService LS = ListService();

  Cardss getRandomCardByType(CardType cardType, List<Cardss> phoSachList,
      List<Cardss> phoVanList, List<Cardss> phoVawnList) {
    List<Cardss> cardList = [];
    switch (cardType) {
      case CardType.phoSach:
        cardList = phoSachList;
        break;
      case CardType.phoVan:
        cardList = phoVanList;
        break;
      case CardType.phoVawn:
        cardList = phoVawnList;
        break;
      case CardType.NotCard:
        break;
    }
    int randomIndex = Random().nextInt(cardList.length);
    return cardList.removeAt(randomIndex);
  }

  List<Cardss> getRandomCardsWithTypes(int numCards, List<Cardss> phoSachList,
      List<Cardss> phoVanList, List<Cardss> phoVawnList) {
    List<Cardss> randomCards = [];
    for (int i = 0; i < numCards; i++) {
      CardType randomType = cardTypes[i];
      Cardss randomCard =
          getRandomCardByType(randomType, phoSachList, phoVanList, phoVawnList);
      randomCards.add(randomCard);
    }
    return randomCards;
  }

  List<Player> getDataPlayer(
      String namePlayer1,
      String namePlayer2,
      String namePlayer3,
      String namePlayer4,
      List<Cardss> phoSachList,
      List<Cardss> phoVanList,
      List<Cardss> phoVawnList) {
    List<Player> playerData = [
      Player(1, namePlayer1,
          getRandomCardsWithTypes(3, phoSachList, phoVanList, phoVawnList), 0),
      Player(2, namePlayer2,
          getRandomCardsWithTypes(3, phoSachList, phoVanList, phoVawnList), 0),
      Player(3, namePlayer3,
          getRandomCardsWithTypes(3, phoSachList, phoVanList, phoVawnList), 0),
      Player(4, namePlayer4,
          getRandomCardsWithTypes(3, phoSachList, phoVanList, phoVawnList), 0),
    ];
    return playerData;
  }

  GameMatch createGameMatch(
      int maxRounds,
      String namePlayer1,
      String namePlayer2,
      String namePlayer3,
      String namePlayer4,
      List<Cardss> phoSachList,
      List<Cardss> phoVanList,
      List<Cardss> phoVawnList) {
    GameMatch match = GameMatch();
    match.id = 1;
    match.maxRounds = maxRounds;
    match.players = getDataPlayer(namePlayer1, namePlayer2, namePlayer3,
        namePlayer4, phoSachList, phoVanList, phoVawnList);
    return match;
  }
}
