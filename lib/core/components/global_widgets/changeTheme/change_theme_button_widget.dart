import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/color_constants.dart';
import '../../../init/getx_controllers/theme_controller.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<ThemeController>(
      builder: (controller) =>  Switch.adaptive(
        value: controller.isDarkMode,
        activeColor: Colors.green,
        onChanged: (value) {
          controller.isDarkMode = value;
          controller.switchTheme();
          controller.update();
        },
      ));
  }
}