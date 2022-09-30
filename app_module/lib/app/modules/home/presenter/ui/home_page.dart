import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return PlantPageTemplateWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            height: 220,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  PlantCustomColor.secondaryBackgroundColor,
                  PlantCustomColor.backgroundColor,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PlantSearchBarWidget(),
                      Icon(IconlyLight.heart, color: PlantCustomColor.primaryColor, size: 24),
                      Icon(IconlyLight.notification, color: PlantCustomColor.primaryColor, size: 24),
                    ],
                  ),
                  SizedBox(height: size.height * 0.04),
                  Text(
                    "Let's Find your\nDream Plant for\nyour Home",
                    style: theme.textTheme.headline1,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.01),
                const PlantProductCardWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
