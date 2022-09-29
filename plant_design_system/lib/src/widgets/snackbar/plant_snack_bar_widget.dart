import 'package:flutter/material.dart';

class PlantSnackBarWidget extends SnackBar {
  PlantSnackBarWidget({
    Key? key,
    required String content,
    required Color color,
  }) : super(
          key: key,
          duration: const Duration(seconds: 3),
          backgroundColor: color,
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Expanded(
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );

  factory PlantSnackBarWidget.success(String content) => PlantSnackBarWidget(content: content, color: Colors.green);

  factory PlantSnackBarWidget.error(String content) => PlantSnackBarWidget(content: content, color: Colors.red);
}
