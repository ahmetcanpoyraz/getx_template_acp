import 'package:get/get.dart';
import 'package:getx_template_acp/services/test_service.dart';

import '../../routes/routes.dart';

class CustomBottomNavigationController extends GetxController{

  var tabIndex = 0.obs;
  var pastTabIndex = 0.obs;

  Future<void> changeTabIndex(int index) async {

    if(tabIndex.value == 0){
      await Get.keys[1]!.currentState!.maybePop();
    }

    tabIndex.value = index;
    tabIndex.refresh();
  }

  @override
  void onInit() {
    super.onInit();
    print("Sınıftan bir nesne oluşturuldu");
  }


}