import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LangController  extends GetxController {

  final _box = GetStorage();
  final _key = 'langBox';

  final locale = Get.locale;

  Future<void> fetchLanguage() async {
    String langCode = _box.read("langBox") ?? Get.deviceLocale!.languageCode;
    if(langCode == "en"){
      Get.updateLocale(const Locale('en', 'US'));
    }
    else if(langCode == "tr"){
      Get.updateLocale(const Locale('tr', 'TR'));
    }
  }

  Future<void> changeSelectedValue(String value) async {
    _box.write(_key, value);
    if(value == "en"){
      Get.updateLocale(const Locale('en', 'US'));
    }
    if(value == 'tr'){
      Get.updateLocale(const Locale('tr', 'TR'));
    }
    update();
  }

}