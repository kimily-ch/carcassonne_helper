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
        valueListenable: widget.tile.countListener,
        builder: (context, value, _) => Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(children: [
                    value == 0
                        ? Image.asset(_getImagePath(widget.tile.id),
                            width: 100,
                            height: 100,
                            color: Color.fromARGB(0x80, 0x80, 0x80, 0x80),
                            colorBlendMode: BlendMode.dstATop)
                        : Image.asset(_getImagePath(widget.tile.id),
                            width: 100, height: 100),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: value == 0
                              ? null
                              : () {
                                  if (widget.tile.countListener.value > 0) {
                                    widget.tile.countListener.value--;
                                  }
                                },
                        ),
                      ),
                    ),
                  ]),
                  Text('${value} / ${widget.tile.totalCount}')
                ],
              ),
            ));
  }
}
