import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantBasicRedirectTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;
  final Color? tileColor;

  const PlantBasicRedirectTile({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    this.tileColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height * 0.07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: tileColor ?? PlantCustomColor.darkColor),
                  const SizedBox(width: 10),
                  Text(title, style: theme.textTheme.headline3!.copyWith(fontSize: 17, color: tileColor))
                ],
              ),
              Icon(IconlyLight.arrow_right_2, color: tileColor ?? PlantCustomColor.darkColor)
            ],
          ),
        ),
      ),
    );
  }
}
