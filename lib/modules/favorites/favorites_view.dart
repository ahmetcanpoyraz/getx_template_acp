
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_template_acp/core/components/global_widgets/alertdialog/custom_alertdialog.dart';

import '../../core/components/global_widgets/appBar/custom_app_bar.dart';
import 'favorites_controller.dart';



class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Favorites"),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("FavoritesView"),
          ElevatedButton(onPressed: (){
            showDialog(
                context: context,
                builder: (ctx) {
                  return CustomAlertDialog(title: "asd",message: "asd",bgColor: Colors.red,content: Text("asdas"),isBackButton: true,onRightPressed: (){
                    Get.back();
                  },rightBtnText: "asdasd",onLeftPressed: (){
                  Get.back();
                  },leftBtnText: "asd",);
                });
          }, child: Text("show alert dialog")),
        ],
      )),
    );
  }
}
