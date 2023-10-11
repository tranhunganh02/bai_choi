import 'Card.dart';
import 'Player.dart';

class Match{
  late int id;
  late Set<Player> players;
  late Set<Card> cards;

  Match(this.id, this.players, this.cards);


}