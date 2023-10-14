import 'package:flutter/material.dart';

import 'Cards.dart';
import 'Player.dart';

class Match{
  late int id;
  late int maxRound;
  late List<Player> players;
  late List<Cardss> cards;

  Match(this.id, this.maxRound, this.players, this.cards);
}