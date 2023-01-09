import 'package:carcassonne_helper/models/tile.dart';

class Game {
  final List<Tile> tiles;

  static final String baseSetIds = 'ABCDEFGHIJKLMNOPQRSTUVWX';

  static const List<int> baseSetCounts = [
    2,
    4,
    1,
    4,
    5,
    2,
    1,
    3,
    2,
    3,
    3,
    3,
    2,
    3,
    2,
    3,
    1,
    3,
    2,
    1,
    8,
    9,
    4,
    1
  ];

  Game.baseGame() : tiles = [] {
    for (var i = 0; i < baseSetIds.length; i++) {
      tiles.add(Tile(id: baseSetIds[i], totalCount: baseSetCounts[i]));
    }
  }
}
