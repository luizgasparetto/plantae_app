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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: PlantTitleBannerWidget(
                title: 'My Garden',
                subtitle: '(you have 5 plants)',
                icon: IconlyBold.plus,
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
                      InkWell(
                        onTap: () => Modular.to.pushNamed(AppRoutes.plantDetails),
                        child: PlantBasicProductCardWidget(name: 'Montsera', isFavorite: false),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What's this plant?", style: theme.textTheme.headline1!.copyWith(fontSize: 26)),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: size.width,
                      height: size.height * 0.2,
                      decoration: BoxDecoration(
                        color: PlantCustomColor.earthyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            const Spacer(),
                            Icon(
                              IconlyLight.arrow_right_2,
                              color: PlantCustomColor.darkColor,
                              size: 36,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Text('Recommended plants', style: theme.textTheme.headline1!.copyWith(fontSize: 26)),
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
