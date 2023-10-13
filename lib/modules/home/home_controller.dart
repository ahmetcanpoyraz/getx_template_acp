import 'package:get/get.dart';
import 'package:getx_template_acp/modules/profile/profile_controller.dart';

import '../../services/test_service.dart';

class HomeController extends GetxController{
  //final TestService _testService;
  late final ProfileController profileViewModel;
  RxString abc = "0".obs;

  @override
  void onInit() {
    super.onInit();
    print("Sınıftan bir nesne oluşturuldu");
  }

  changeAbc(String value){
    abc.value = value;
    refresh();
  }
}