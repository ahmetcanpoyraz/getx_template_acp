import 'package:get/get.dart';
import 'package:getx_template_acp/modules/bottom_navigation/bottom_navigation_controller.dart';



class CustomBottomNavigationPageBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(CustomBottomNavigationController());
  }

}