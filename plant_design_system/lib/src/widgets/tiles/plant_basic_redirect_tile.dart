import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantBasicRedirectTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final void Function()? onTap;

  const PlantBasicRedirectTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: size.height * 0.105,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: size.width,
                height: size.height * 0.06,
                child: Row(
                  children: [
                    Icon(icon, color: PlantCustomColor.darkColor, size: 28),
                    SizedBox(width: size.width * 0.03),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: GoogleFonts.jost(color: PlantCustomColor.darkColor, fontSize: 18, height: 1)),
                        Text(subTitle, style: GoogleFonts.jost(color: PlantCustomColor.dialogColor, fontSize: 15)),
                      ],
                    ),
                    const Spacer(),
                    Icon(IconlyLight.arrow_right_2, color: PlantCustomColor.dialogColor, size: 20),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Divider(
              height: 1,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
      ),
    );
  }
}
