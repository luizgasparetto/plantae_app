import 'package:dependency_module/dependency_module.dart';
import 'package:plant_design_system/plant_design_system.dart';
import 'package:plantae/app/core/services/overlay/i_overlay_service.dart';

class AsukaOverlayServiceImpl implements IOverlayService {
  @override
  void showSuccessSnackBar(String content) => Asuka.showSnackBar(PlantSnackBarWidget.success(content));

  @override
  void showErrorSnackBar(String content) => Asuka.showSnackBar(PlantSnackBarWidget.error(content));
}
