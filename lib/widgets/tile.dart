import 'package:flutter/material.dart';

import '../models/tile.dart';

class TileWidget extends StatefulWidget {
  final Tile tile;

  const TileWidget({Key? key, required this.tile}) : super(key: key);

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  // TODO: place to a reasonable place.
  static String _getImagePath(String id) =>
      'assets/tiles/20AE_Base_Game_C2_Tile_${id}.png';

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: widget.tile.count,
        builder: (context, value, _) => Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    _getImagePath(widget.tile.id),
                    width: 100,
                    height: 100,
                  ),
                  Text('${value} / ${widget.tile.totalCount}')
                ],
              ),
            ));
  }
}
