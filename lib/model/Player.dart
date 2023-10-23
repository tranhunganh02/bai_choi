import 'package:bai_choi/model/Cards.dart';

class Player {
  late int _id;
  late String _playerName;
  late List<Cardss> _cards;
  late int _score;

  int get id {
    return _id;
  }

  List<Cardss> get cards => _cards;

  set cards(List<Cardss> value) {
    _cards = value;
  }

  set id(int id) {
    _id = id;
  }


  int get score => _score;

  set score(int value) {
    _score = value;
  }

  String get playerName {
    return _playerName;
  }

  set playerName(String name) {
    _playerName = name;
  }

  List<Cardss> get card {
    return _cards;
  }

  set card(List<Cardss> cards) {
    _cards = cards;
  }


// ignore: non_constant_identifier_names
  Player(int id, String playerName, List<Cardss> cards, int score) {
    _id = id;
    _playerName = playerName;
    [_cards = cards];
    _score = score;
  }

}
