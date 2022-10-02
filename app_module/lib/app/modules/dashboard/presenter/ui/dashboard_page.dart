import 'package:app_module/app/modules/home/presenter/ui/home_page.dart';
import 'package:app_module/app/modules/user/presenter/ui/profile_page.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: PlantBottomBarWidget(
        onSelected: (index) => pageController.jumpToPage(index),
        items: const [
          PlantBottomBarItem(
            icon: IconlyLight.home,
            activeIon: IconlyBold.home,
          ),
          PlantBottomBarItem(
            icon: IconlyLight.profile,
            activeIon: IconlyBold.profile,
          ),
        ],
      ),
    );
  }
}
