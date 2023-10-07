class Player{
  late int _id;
  late String _playerName;
  late int score;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get playerName => _playerName;

  set playerName(String value) {
    _playerName = value;
  }
}