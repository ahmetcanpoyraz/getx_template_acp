import 'package:get/get.dart';
import 'package:getx_template_acp/services/test_service.dart';

class ProfileController extends GetxController{
  final TestService _testService;
  ProfileController(this._testService);

  @override
  void onInit() {

    super.onInit();
    print("Sınıftan bir nesne oluşturuldu");
  }

  veriCek(){
    _testService.internettenVericek();
  }


}