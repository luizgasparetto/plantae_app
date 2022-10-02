import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantTitleBannerWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const PlantTitleBannerWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: theme.textTheme.headline1),
            Text(subtitle, style: theme.textTheme.headline2),
          ],
        ),
        Icon(icon, color: PlantCustomColor.darkColor, size: 38),
      ],
    );
  }
}
