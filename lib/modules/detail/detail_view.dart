import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/components/global_widgets/appBar/custom_app_bar.dart';
import '../home/home_controller.dart';
import 'detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView(this.data, {Key? key}) : super(key: key);
  final String? data;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "Detail",showBackButtonForNested: true),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("DetailView"),
          SizedBox(height: 40,),
          Text(controller.data),
          SizedBox(height: 40,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 80.0),
            child: TextFormField(controller: controller.textEditingController),
          ),
          SizedBox(height: 40,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40.0),
            child: CupertinoButton.filled(child:Text("abc değerini değiştir"), onPressed: (){
              Get.find<HomeController>().changeAbc(controller.textEditingController.text);
            }),
          )
        ],
      )),
    );
  }
}
