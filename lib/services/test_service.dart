import 'package:get/get.dart';

class TestService extends GetxService{

  internettenVericek() async{
   await Future.delayed(Duration(seconds: 3));
   print("veri çekildi");
  }
}