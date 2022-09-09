import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:plantae/app/core/services/overlay/i_overlay_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final asukaService = Modular.get<IOverlayService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => asukaService.showErrorSnackBar('Falha ao tentar fazer o login'),
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
