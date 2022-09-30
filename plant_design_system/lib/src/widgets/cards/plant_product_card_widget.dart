import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantProductCardWidget extends StatelessWidget {
  const PlantProductCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.5,
      decoration: BoxDecoration(
        color: PlantCustomColor.secondaryBackgroundColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              height: size.height * 0.23,
              child: Image.network(
                'https://png.pngtree.com/element_our/20190530/ourlarge/pngtree-plant-pot-image_1251361.jpg',
              ),
            ),
          ),
          SizedBox(height: size.height * 0.015),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Birds Nest Fern', style: theme.textTheme.headline2),
                Icon(IconlyLight.arrow_right_circle, color: PlantCustomColor.primaryColor)
              ],
            ),
          )
        ],
      ),
    );
  }
}
