// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PlantFavoriteButtonWidget extends StatefulWidget {
  bool isFavorite;

  PlantFavoriteButtonWidget({Key? key, required this.isFavorite}) : super(key: key);

  @override
  State<PlantFavoriteButtonWidget> createState() => _PlantFavoriteButtonWidgetState();
}

class _PlantFavoriteButtonWidgetState extends State<PlantFavoriteButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {
        widget.isFavorite = !widget.isFavorite;
      }),
      child: widget.isFavorite
          ? const Icon(Icons.favorite, size: 30, color: Colors.red)
          : const Icon(Icons.favorite_border, size: 30, color: Colors.grey),
    );
  }
}
