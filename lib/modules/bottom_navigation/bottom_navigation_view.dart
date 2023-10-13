import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template_acp/modules/bottom_navigation/bottom_navigation_controller.dart';
import 'package:getx_template_acp/modules/favorites/favorites_view.dart';
import 'package:getx_template_acp/modules/home/home_view.dart';
import 'package:getx_template_acp/routes/routes.dart';

import '../detail/detail_view.dart';
import '../profile/profile_view.dart';


class CustomBottomNavigationView extends GetView<CustomBottomNavigationController> {
   CustomBottomNavigationView({Key? key}) : super(key: key);

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),

            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.favorite,
                    size: 20.0,
                  ),
                ),
                label: 'Favorites',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                  ),
                ),
                label: 'Profile',
                backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
        )));
  }
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: buildBottomNavigationMenu(context, controller),
      body: Obx(() => IndexedStack(
        index: controller.tabIndex.value,
        children: [
          Navigator(
              key: Get.nestedKey(1), // create a key by index
              initialRoute: Routes.homeView,
              onGenerateRoute: (settings) {
                if (settings.name == Routes.homeView) {
                  return GetPageRoute(
                      page: () => HomeView()
                  );
                } else if (settings.name == Routes.detailView) {
                  Get.routing.args = settings.arguments;
                  return GetPageRoute(
                      page: () => DetailView(Get.routing.args)
                  );
                }
              }
          ),
          FavoritesView(),
          ProfileView(),
        ],
      )),);
  }
}
