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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.1),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: PlantTitleBannerWidget(
                title: 'Hey, Luiz',
                subtitle: 'you can change all your settings',
                icon: IconlyBold.profile,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(
              height: size.height * 0.6,
              child: Column(
                children: [
                  PlantBasicRedirectTile(
                    title: 'Settings',
                    subTitle: 'Setup your settings',
                    icon: IconlyLight.setting,
                    onTap: () {},
                  ),
                  PlantBasicRedirectTile(
                    title: 'Notifications',
                    subTitle: 'My notification center',
                    icon: IconlyBold.setting,
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//EdgeInsets.symmetric(horizontal: 24),


