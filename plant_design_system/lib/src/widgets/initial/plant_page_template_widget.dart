import 'package:flutter/material.dart';

class PlantPageTemplateWidget extends StatelessWidget {
  final Widget child;

  const PlantPageTemplateWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: child,
      ),
    );
  }
}
