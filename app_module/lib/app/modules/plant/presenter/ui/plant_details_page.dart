import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantDetailsPage extends StatefulWidget {
  const PlantDetailsPage({Key? key}) : super(key: key);

  @override
  State<PlantDetailsPage> createState() => _PlantDetailsPageState();
}

class _PlantDetailsPageState extends State<PlantDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: PlantCustomColor.primaryColor.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 16),
              child: PlantBackButtonWidget(
                onTap: () => Modular.to.pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
