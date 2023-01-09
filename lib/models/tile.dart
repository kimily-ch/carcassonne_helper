import 'package:flutter/foundation.dart';

class Tile {
  final String id;

  final int totalCount;

  final ValueNotifier<int> countListner;

  Tile({required this.id, required this.totalCount})
      : countListner = ValueNotifier(totalCount) {}
}
