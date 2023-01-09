import 'package:flutter/cupertino.dart';

class Tile {
  final String id;

  final int totalCount;

  final ValueNotifier<int> count;

  Tile({required this.id, required this.totalCount})
      : count = ValueNotifier(totalCount) {}
}
