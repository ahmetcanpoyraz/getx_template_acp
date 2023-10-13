import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_template_acp/modules/detail/detail_page_binding.dart';
import 'package:getx_template_acp/modules/detail/detail_view.dart';
import 'package:getx_template_acp/modules/favorites/favorites_view.dart';
import 'package:getx_template_acp/modules/home/home_page_binding.dart';
import 'package:getx_template_acp/modules/profile/profile_page_binding.dart';
import 'package:getx_template_acp/routes/routes.dart';
import 'package:getx_template_acp/modules/bottom_navigation/bottom_navigation_view.dart';
import 'package:getx_template_acp/modules/home/home_view.dart';
import 'package:getx_template_acp/modules/profile/profile_view.dart';
import '../core/init/binds/sample_bind.dart';
import '../modules/favorites/favorites_page_binding.dart';

abstract class Pages {
  static List<GetPage> pages = [
    GetPage(name: Routes.homeView, page: () => HomeView(), binding: HomePageBindings()),
    GetPage(name: Routes.profileView, page: () => ProfileView(), binding: ProfilePageBindings()),
    GetPage(
        name: Routes.bottomNavigationView,
        page: () => CustomBottomNavigationView(),
        binding: SampleBind()),
    GetPage(name: Routes.detailView, page: () => DetailView(null), binding: DetailPageBindings()),
    GetPage(
        name: Routes.favoritesView, page: () => FavoritesView(), binding: FavoritesPageBindings()),
  ];
}
