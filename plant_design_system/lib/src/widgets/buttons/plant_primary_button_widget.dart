import 'package:flutter/material.dart';

import '../../../plant_design_system.dart';

class PlantPrimaryButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final void Function() onPressed;

  const PlantPrimaryButtonWidget({
    Key? key,
    required this.buttonLabel,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: PlantCustomColor.buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonLabel,
          style: theme.textTheme.headline1!.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
