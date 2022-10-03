import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantDetailsPage extends StatefulWidget {
  const PlantDetailsPage({Key? key}) : super(key: key);

  @override
  State<PlantDetailsPage> createState() => _PlantDetailsPageState();
}

class _PlantDetailsPageState extends State<PlantDetailsPage> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: PlantCustomColor.lightPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 16),
            child: PlantBackButtonWidget(
              onTap: () => Modular.to.pop(),
            ),
          ),
          SizedBox(height: size.height * 0.38),
          Expanded(
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: PlantCustomColor.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
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
                        Text('Montserat', style: theme.textTheme.headline1),
                        PlantFavoriteButtonWidget(isFavorite: isFavorite),
                      ],
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam mollis mi dolor, ac feugiat eros vehicula vel. Morbi in ligula nulla. Nam consectetur molestie dolor, eget aliquet sem porta in. Donec rhoncus pellentesque tortor eget volutpat. Mauris nibh mauris, sodales non pharetra in, rutrum quis risus.',
                      style: theme.textTheme.headline4,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
