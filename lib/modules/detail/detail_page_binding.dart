
import 'package:get/get.dart';
import 'detail_controller.dart';



class DetailPageBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(DetailController());
  }

}