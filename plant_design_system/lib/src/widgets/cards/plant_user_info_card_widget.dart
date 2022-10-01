import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantUserInfoCardWidget extends StatelessWidget {
  final String label;
  final String content;
  final void Function()? onTap;

  const PlantUserInfoCardWidget({
    Key? key,
    required this.label,
    required this.content,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: GoogleFonts.lato(color: PlantCustomColor.dialogColor)),
                const Spacer(),
                Text(
                  content,
                  style: GoogleFonts.lato(
                    color: PlantCustomColor.primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: onTap,
              child: Icon(IconlyLight.edit, color: PlantCustomColor.dialogColor),
            )
          ],
        ),
      ),
    );
  }
}
