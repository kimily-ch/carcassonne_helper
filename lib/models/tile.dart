import 'package:flutter/material.dart';

class Tile {
  final String id;

  final int totalCount;

  final ValueNotifier<int> countListener;

  Tile({required this.id, required this.totalCount})
      : countListener = ValueNotifier(totalCount) {}
}
