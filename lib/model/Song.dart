import 'package:bai_choi/model/Card.dart';

class Song{
  late int _id;
  late Card _isCard;
  late String _songURL;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  Card get isCard => _isCard;

  String get songURL => _songURL;

  set songURL(String value) {
    _songURL = value;
  }

  set isCard(Card value) {
    _isCard = value;
  }

  Song(this._id, this._isCard, this._songURL);
}

