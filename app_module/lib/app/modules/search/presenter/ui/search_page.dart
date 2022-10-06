import 'package:core_module/core.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.1),
              const PlantTitleBannerWidget(
                title: 'More Plants..',
                subtitle: 'All plants in one place, check it out',
              ),
              SizedBox(height: size.height * 0.025),
              const PlantSearchBarWidget(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (_, index) {
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
        ),
      ),
    );
  }
}
