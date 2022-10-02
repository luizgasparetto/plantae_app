import 'package:flutter/material.dart';
import 'package:plant_design_system/plant_design_system.dart';

class PlantBottomBarWidget extends StatefulWidget {
  final List<PlantBottomBarItem> items;
  final void Function(int index) onSelected;

  const PlantBottomBarWidget({
    Key? key,
    required this.items,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<PlantBottomBarWidget> createState() => _PlantBottomBarWidgetState();
}

class _PlantBottomBarWidgetState extends State<PlantBottomBarWidget> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).copyWith(top: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          items: List.from(
            widget.items.map(
              (e) => BottomNavigationBarItem(
                label: '',
                backgroundColor: Colors.white,
                icon: Icon(e.icon),
                activeIcon: Icon(e.activeIon),
              ),
            ),
          ),
          selectedItemColor: PlantCustomColor.darkColor,
          unselectedItemColor: PlantCustomColor.dialogColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selected,
          onTap: (index) {
            widget.onSelected(index);
            setState(() {
              selected = index;
            });
          },
        ),
      ),
    );
  }
}
