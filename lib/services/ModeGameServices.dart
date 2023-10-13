import 'dart:math';
import '../model/Player.dart';
import '../model/Cards.dart';
import '../model/CardType.dart';

class ModeGameServices {
  static List<CardType> cardTypes = [
    CardType.phoSach,
    CardType.phoVan,
    CardType.phoVawn
  ];

  Cardss getRandomCardByType(CardType cardType) {
    List<Cardss> cardList;
    switch (cardType) {
      case CardType.phoSach:
        cardList = listCardSach;
        break;
      case CardType.phoVan:
        cardList = listCardVan;
        break;
      case CardType.phoVawn:
        cardList = listCardVawn;
        break;
    }
    int randomIndex = Random().nextInt(cardList.length);
    return cardList[randomIndex];
  }

  List<Cardss> getRandomCardsWithTypes(int numCards) {
    List<Cardss> randomCards = [];
    for (int i = 0; i < numCards; i++) {
      int randomIndex = Random().nextInt(cardTypes.length);
      CardType randomType = cardTypes[randomIndex];
      Cardss randomCard = getRandomCardByType(randomType);
      randomCards.add(randomCard);
    }
    return randomCards;
  }

  Future<List<Player>> getDataPlayer(String namePlayer) async {
    List<Player> playerData = [
      Player(1, namePlayer, getRandomCardsWithTypes(3)),
      Player(2, "  bot1  ",  getRandomCardsWithTypes(3)),
      Player(3, "  bot2  ",  getRandomCardsWithTypes(3)),
      Player(4, "  bot3  ",  getRandomCardsWithTypes(3)),
    ];
    return playerData;
  }
}
