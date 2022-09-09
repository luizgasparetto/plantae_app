import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:plantae/app/core/services/overlay/i_overlay_service.dart';

class AsukaOverlayServiceImpl implements IOverlayService {
  // TODO - Make snackbar on design system

  @override
  void showSuccessSnackBar(String content) => Asuka.showSnackBar(SnackBar(content: Text(content)));

  @override
  void showErrorSnackBar(String content) => Asuka.showSnackBar(SnackBar(content: Text(content)));
}
