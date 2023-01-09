import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  final String id;
  final total_count;

  const TileWidget({Key? key, required this.id, required this.total_count})
      : super(key: key);

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  late int count;

  late String id;

  late int total_count;

  _TileWidgetState() {}

  @override
  Widget build(BuildContext context) {
    this.id = widget.id;
    this.total_count = widget.total_count;
    this.count = widget.total_count;

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/tiles/$id.png',
            width: 100,
            height: 100,
          ),
          Text('$count / $total_count')
        ],
      ),
    );
  }
}
