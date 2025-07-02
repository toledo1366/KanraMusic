import 'package:kanra_music/models/game_config.dart';
import 'package:kanra_music/models/player.dart';

class Game {
  int gameId;
  String code;
  List<Player> players;
  GameConfig gameConfig;

  Game(this.gameId, this.code, this.players, this.gameConfig);
}