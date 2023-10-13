import 'package:get/get.dart';
import 'package:getx_template_acp/modules/detail/detail_controller.dart';
import 'package:getx_template_acp/modules/favorites/favorites_controller.dart';
import 'package:getx_template_acp/modules/profile/profile_controller.dart';

import '../../../modules/bottom_navigation/bottom_navigation_controller.dart';
import '../../../modules/home/home_controller.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomBottomNavigationController>(() => CustomBottomNavigationController(),
        fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    //Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<FavoritesController>(() => FavoritesController(), fenix: true);
    Get.lazyPut<DetailController>(() => DetailController(), fenix: true);
  }
}
