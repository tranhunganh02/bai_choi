import 'package:bai_choi/model/Cards.dart';

class Player{
  late int id;
  late String playerName;
  late Set<Cardss> playerCards;
  late int score;

  Player(this.id, this.playerName, this.playerCards, this.score);
}
