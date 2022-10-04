import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

class PlantTextButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final void Function() onPressed;

  const PlantTextButtonWidget({
    Key? key,
    required this.buttonLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
      child: Text(
        buttonLabel,
        style: GoogleFonts.jost(
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 105, 105, 105),
        ),
      ),
    );
  }
}
