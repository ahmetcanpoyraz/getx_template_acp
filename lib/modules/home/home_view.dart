import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template_acp/modules/home/home_controller.dart';

import '../../core/components/global_widgets/appBar/custom_app_bar.dart';
import '../../routes/routes.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.abc.value)),
            Text("home".tr),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.detailView, arguments: 'arg1', id: 1);
                },
                child: Text("Go Detail")),
            /* CupertinoButton.filled(child:Text("sonraki sayfa"), onPressed: () async {
             await controller.changeAbc("asda");
              Get.toNamed(Routes.profileView);
            })*/
          ],
        ),
      ),
    );
  }
}
