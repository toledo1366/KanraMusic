

import 'package:kanraa/models/player.dart';

import 'game_config.dart';

class Game {
  int gameId;
  String code;
  List<Player> players;
  GameConfig gameConfig;

  Game(this.gameId, this.code, this.players, this.gameConfig);
}