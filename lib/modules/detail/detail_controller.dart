import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_template_acp/services/test_service.dart';

class DetailController extends GetxController{
  late TextEditingController textEditingController;
  late var data;
  //final data1 = Get.arguments;
  @override
  void onInit() {

    textEditingController = TextEditingController();
    super.onInit();
    data = Get.arguments;
    print(Get.arguments);
    print("Sınıftan bir nesne oluşturuldu");
  }

  @override
  onReady(){
    super.onReady();
    //data = Get.arguments;
   // print(Get.arguments);
    update();
  }

}