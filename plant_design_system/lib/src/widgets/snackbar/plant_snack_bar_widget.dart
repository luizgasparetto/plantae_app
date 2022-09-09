import 'package:flutter/material.dart';

class PlantSnackBarWidget extends SnackBar {
  PlantSnackBarWidget({
    Key? key,
    required String content,
    required Color color,
    required IconData icon,
  }) : super(
          key: key,
          duration: const Duration(seconds: 3),
          backgroundColor: color,
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Icon(icon, color: Colors.white),
              Expanded(
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );

  factory PlantSnackBarWidget.success(String content) =>
      PlantSnackBarWidget(content: content, color: Colors.green, icon: Icons.check);

  factory PlantSnackBarWidget.error(String content) =>
      PlantSnackBarWidget(content: content, color: Colors.red, icon: Icons.error);
}
