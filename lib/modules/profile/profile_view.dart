import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template_acp/modules/home/home_controller.dart';
import 'package:getx_template_acp/modules/profile/profile_controller.dart';
import '../../core/components/global_widgets/appBar/custom_app_bar.dart';
import '../../routes/routes.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Profile"),
      floatingActionButton: FloatingActionButton(onPressed: (){
        controller.veriCek();
      },),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Profile"),
         /* CupertinoButton.filled(child:Text("Önceki sayfa"), onPressed: (){
            Get.find<HomeController>().changeAbc("asdas");
            Get.back();
          })*/
        ],
      )),
    );
  }
}
