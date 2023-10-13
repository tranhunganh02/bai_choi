import 'package:bai_choi/model/Cards.dart';
import 'package:bai_choi/services/test.dart';

class Player {
  late int _id;
  late String _playerName;
  late List<Cardss> _cards;

  int get id {
    return _id;
  }
  set id(int id) {
    _id = id;
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
  Player(int id, String playerName, List<Cardss> cards) {
    _id = id;
    _playerName = playerName;
    [_cards = cards];
  }
}
