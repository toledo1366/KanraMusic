import 'package:kanra_music/models/player.dart';

class Track {
  int gameId;
  Player player;
  String trackUrl;

  Track(this.gameId, this.player, this.trackUrl);
}