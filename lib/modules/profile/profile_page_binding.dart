
import 'package:get/get.dart';
import 'package:getx_template_acp/modules/profile/profile_controller.dart';
import 'package:getx_template_acp/services/test_service.dart';


class ProfilePageBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileController(
      Get.find(),
    ));
  }

}