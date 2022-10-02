// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantComplexProductCardWidget extends StatefulWidget {
  bool isFavorite;

  PlantComplexProductCardWidget({
    Key? key,
    required this.isFavorite,
  }) : super(key: key);

  @override
  State<PlantComplexProductCardWidget> createState() => _PlantComplexProductCardWidgetState();
}

class _PlantComplexProductCardWidgetState extends State<PlantComplexProductCardWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height * 0.15,
      child: Row(
        children: [
          Container(
            width: size.width * 0.33,
            decoration: BoxDecoration(
              color: PlantCustomColor.earthyColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      widget.isFavorite = !widget.isFavorite;
                    });
                  },
                  child: Icon(Icons.favorite, size: 20, color: widget.isFavorite ? Colors.red : Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pilea Peperomioides',
                  style: theme.textTheme.headline3!.copyWith(fontSize: 17),
                ),
                Text('- Indirect lighting', style: theme.textTheme.headline4),
                Text('- Indoor type', style: theme.textTheme.headline4)
              ],
            ),
          )
        ],
      ),
    );
  }
}
