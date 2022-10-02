import 'package:core_module/core.dart';
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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Garden', style: theme.textTheme.headline1),
                      Text('(you have 5 plants)', style: theme.textTheme.headline2),
                    ],
                  ),
                  Icon(IconlyBold.plus, color: PlantCustomColor.darkColor, size: 38),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(
              height: size.height * 0.3,
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, __) {
                  return Row(
                    children: [
                      SizedBox(width: size.width * 0.05),
                      const PlantBasicProductCardWidget(name: 'Montsera'),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Discover new plants', style: theme.textTheme.headline1!.copyWith(fontSize: 26)),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (_, __) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () => Modular.to.pushNamed(AppRoutes.plantDetails),
                          child: PlantComplexProductCardWidget(isFavorite: false),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
