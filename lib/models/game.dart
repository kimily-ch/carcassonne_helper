import 'package:carcassonne_helper/models/tile.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';

class Game {
  final List<Tile> tiles = [];
  final ValueNotifier<int> totalTilesLeftListener = ValueNotifier(0);

  static const String baseSetIds = 'ABCDEFGHIJKLMNOPQRSTUVWX';

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

  Game.baseGame() {
    for (var i = 0; i < baseSetIds.length; i++) {
      tiles.add(Tile(id: baseSetIds[i], totalCount: baseSetCounts[i]));
    }

    for (var tile in tiles) {
      tile.countListener.addListener(updateLeftCount);
    }

    updateLeftCount();
  }

  void updateLeftCount() {
    totalTilesLeftListener.value = tiles.map((t) => t.countListener.value).sum;
  }
}
