import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantSearchBarWidget extends StatelessWidget {
  const PlantSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height * 0.08,
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
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: PlantCustomColor.lightBorderColor, width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: PlantCustomColor.lightBorderColor, width: 1.5),
          ),
          prefixIcon: Icon(
            IconlyLight.search,
            color: Colors.grey.withOpacity(0.5),
            size: 20,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.grey.withOpacity(0.5),
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
