// ignore_for_file: must_be_immutable
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../init/getx_controllers/lang_controller.dart';

class ChangeLangWidget extends StatelessWidget {

  ChangeLangWidget({
    Key? key,
  }) : super(key: key);

  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
    //  DropdownMenuItem(value: "en", child: SvgPicture.asset(AssetPath.ukFlag,width: 30.w,height: 40.h,)),
    //  DropdownMenuItem(value: "tr", child: SvgPicture.asset(AssetPath.trFlag,width: 30.w,height: 40.h,)),
      DropdownMenuItem(value: "tr", child: Text("Türkçe")),
      DropdownMenuItem(value: "en", child: Text("English")),
    ];
    return menuItems;
  }
  @override
  Widget build(BuildContext context) {

    return GetBuilder<LangController>(
        builder: (controller) => Container(
        margin: EdgeInsets.only(left: 10.w),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            iconSize: 0,
            dropdownWidth: 80.w,
            alignment: Alignment.center,
            hint: Icon(Icons.language,size: 24.h,),
            items: dropdownItems,
            onChanged: (value) async {
             controller.changeSelectedValue(value.toString());
            //  Provider.of<TransactionsViewModel>(context,listen: false).changeSelectedValue(value.toString());
            },
            buttonHeight: 80.h,
            buttonWidth: 80.w,
            itemHeight: 50.h,

          ),
        )));
  }
}
