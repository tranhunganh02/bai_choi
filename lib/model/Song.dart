class Song{
  late int _id;
  late String _isCard;
  late String _songURL;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get isCard => _isCard;

  String get songURL => _songURL;

  set songURL(String value) {
    _songURL = value;
  }

  set isCard(String value) {
    _isCard = value;
  }

  Song(this._id, this._isCard, this._songURL);
}
