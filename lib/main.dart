import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_template_acp/routes/pages.dart';
import 'package:getx_template_acp/routes/routes.dart';
import 'package:getx_template_acp/services/test_service.dart';
import 'core/constants/themes.dart';
import 'core/init/getx_controllers/lang_controller.dart';
import 'core/init/getx_controllers/theme_controller.dart';
import 'core/utils/internationalization.dart';

Future<void> main() async {
  Get.put(TestService());
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await GetStorage.init();
  LangController().fetchLanguage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          enableLog: true,
          opaqueRoute: Get.isOpaqueRouteDefault,
          popGesture: Get.isPopGestureEnable,
          initialRoute: Routes.bottomNavigationView,
          getPages: Pages.pages,
          theme: Themes.light,
          themeMode: ThemeController().theme,
          darkTheme: Themes.dark,
          debugShowCheckedModeBanner: false,
          translations: Internationalization(), // your translations
          locale: Get.locale ?? Get.deviceLocale, // translations will be displayed in that locale
          fallbackLocale: Locale('en', 'US'),
        );
      },
    );
  }
}
