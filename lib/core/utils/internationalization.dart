import 'package:get/get.dart';

class Internationalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'login': 'Login',
      'register': 'Register',
      'home': 'Home',
      'favorites': 'Hello World',
    },
    'tr_TR': {
      'hello': 'Merhaba Dünya',
      'login': 'Giriş Yap',
      'register': 'Kayıt Ol',
      'home': 'Anasayfa',
      'favorites': 'Favoriler',
    }
  };
}