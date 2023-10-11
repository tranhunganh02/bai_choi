import 'package:bai_choi/model/Card.dart';

class Player{
  late int _id;
  late String _playerName;
  late Set<Card> _playerCards;
  late int score;

  Player(this._id, this._playerName, this._playerCards, this.score);


  Set<Card> get playerCards => _playerCards;

  set playerCards(Set<Card> value) {
    _playerCards = value;
  }

  String get playerName => _playerName;

  set playerName(String value) {
    _playerName = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}