import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return PlantPageTemplateWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.03),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: size.width * 0.35,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: const Center(child: Icon(IconlyBold.profile, color: Colors.white, size: 64)),
                  ),
                  Positioned(
                    top: 85,
                    left: 95,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: size.width * 0.1,
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          color: PlantCustomColor.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(IconlyBold.camera, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size.height * 0.08),
            SizedBox(
              height: size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  PlantUserInfoCardWidget(label: 'Your Name', content: 'Luiz E. Gasparetto'),
                  PlantUserInfoCardWidget(label: 'E-mail', content: 'luizegasp@gmail.com'),
                  PlantUserInfoCardWidget(label: 'Password', content: '*********'),
                  PlantUserInfoCardWidget(label: 'Phone', content: '(47) 9 9876-5432'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
