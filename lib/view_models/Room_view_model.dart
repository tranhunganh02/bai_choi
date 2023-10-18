import 'dart:math';

import 'package:bai_choi/model/CardType.dart';
import 'package:bai_choi/screens/introduction_game/components/card.dart';
import 'package:flutter/material.dart';
import 'package:bai_choi/model/Cards.dart';
import 'package:bai_choi/model/Player.dart';
import 'package:bai_choi/services/ModeGameServices.dart';

class RoomViewModel extends ChangeNotifier{
  bool _loading = false;
  get loading => _loading;

  setLoading(bool loading) {
    _loading = loading;
     notifyListeners();
  }

  List<CardType> cardTypes = [CardType.phoSach, CardType.phoVan, CardType.phoVawn];


  List<Cardss> randomCards = [];
  getRandomCardsWithTypes(int number) async {
    setLoading(true);
    // randomCards = await ModeGameServices().getRandomCardsWithTypes(number);
    // ignore: unnecessary_null_comparison
    if (randomCards != null) {
      
    } 
  }

}