import 'package:bai_choi/services/test.dart';

class Player {
  late int _id;
  late String _playerName;
  late int _score;

  late Card _card;

  get card => _card;

  get getScore => _score;

 set setScore(score) => _score = score;

  set card(value) => _card = value;
  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get playerName => _playerName;

  set playerName(String value) {
    _playerName = value;
  }
}
