import 'package:flutter/material.dart';

class Tile {
  final String id;

  final int totalCount;

  final ValueNotifier<int> countListner;

  Tile({required this.id, required this.totalCount})
      : countListner = ValueNotifier(totalCount) {}
}
