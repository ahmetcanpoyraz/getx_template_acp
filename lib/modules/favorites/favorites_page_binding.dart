import 'package:get/get.dart';
import 'favorites_controller.dart';



class FavoritesPageBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(FavoritesController());
  }

}