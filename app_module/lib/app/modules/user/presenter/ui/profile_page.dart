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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              const PlantTitleBannerWidget(
                title: 'Hey, Luiz',
                subtitle: 'you can change all your settings',
                icon: IconlyBold.profile,
              ),
              SizedBox(height: size.height * 0.06),
              SizedBox(
                height: size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PlantBasicRedirectTile(
                      title: 'Settings',
                      icon: IconlyBold.setting,
                    ),
                    const PlantBasicRedirectTile(
                      title: 'Notifications',
                      icon: IconlyBold.notification,
                    ),
                    const PlantBasicRedirectTile(
                      title: 'Privacy Policy',
                      icon: IconlyBold.danger,
                    ),
                    const PlantBasicRedirectTile(
                      title: 'Terms of Service',
                      icon: IconlyBold.paper,
                    ),
                    const PlantBasicRedirectTile(
                      title: 'Community Guidelines',
                      icon: IconlyBold.user_3,
                    ),
                    PlantBasicRedirectTile(
                      title: 'Logout',
                      icon: IconlyLight.logout,
                      tileColor: PlantCustomColor.errorColor,
                    ),
                    PlantBasicRedirectTile(
                      title: 'Delete Account',
                      icon: IconlyLight.logout,
                      tileColor: PlantCustomColor.errorColor,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
