import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantSearchBarWidget extends StatelessWidget {
  const PlantSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.6,
      height: size.height * 0.05,
      child: TextFormField(
        maxLines: 1,
        cursorColor: PlantCustomColor.primaryColor,
        style: TextStyle(color: PlantCustomColor.primaryColor),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.fromLTRB(5, 3, 5, 1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(
            IconlyLight.search,
            color: Colors.grey.withOpacity(0.3),
            size: 20,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
