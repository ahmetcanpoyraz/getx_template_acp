
import 'package:get/get.dart';
import 'package:getx_template_acp/modules/home/home_controller.dart';



class HomePageBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}