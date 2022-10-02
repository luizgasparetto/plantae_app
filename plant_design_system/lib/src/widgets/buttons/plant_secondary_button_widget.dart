import 'package:flutter/material.dart';

class PlantSecondaryButtonWidget extends StatelessWidget {
  final double? width;

  const PlantSecondaryButtonWidget({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: width ?? size.width,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
      ),
      child: const Center(
        child: Text('Logout'),
      ),
    );
  }
}
