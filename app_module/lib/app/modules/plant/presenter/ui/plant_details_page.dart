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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PlantCustomColor.backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: PlantCustomColor.darkColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
