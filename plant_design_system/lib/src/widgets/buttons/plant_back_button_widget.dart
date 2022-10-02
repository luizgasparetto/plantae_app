import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantBackButtonWidget extends StatelessWidget {
  final void Function() onTap;

  const PlantBackButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.1,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(
          IconlyLight.arrow_left_2,
          color: PlantCustomColor.darkColor,
          size: 27,
        ),
      ),
    );
  }
}
