import 'dart:math';

import '../model/Cards.dart';
import '../model/CardType.dart';

class RoomServices {

  static List<CardType> cardTypes = [CardType.phoSach, CardType.phoVan, CardType.phoVawn];

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

  Future<List<Cardss>> getRandomCardsWithTypes(int numCards) async{
    List<Cardss> randomCards = [];
    for (int i = 0; i < numCards; i++) {
      int randomIndex = Random().nextInt(cardTypes.length);
      CardType randomType = cardTypes[randomIndex];
      Cardss randomCard = getRandomCardByType(randomType);
      randomCards.add(randomCard);
    }
    return randomCards;
  }
}
