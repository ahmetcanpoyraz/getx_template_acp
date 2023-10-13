import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../change_lang/change_lang.dart';
import '../changeTheme/change_theme_button_widget.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom(
      {Key? key,
      required this.title,
      this.showBackButtonForNormal,
      this.showBackButtonForNested,
      this.showChangeTheme,
      this.showChangeLang})
      : super(key: key);

  final String? title;
  final bool? showBackButtonForNested;
  final bool? showBackButtonForNormal;
  final bool? showChangeTheme;
  final bool? showChangeLang;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      leading: (showBackButtonForNested != null && showBackButtonForNested == true) ||
              (showBackButtonForNormal != null &&
                  showBackButtonForNormal == true &&
                  Get.rootController.routing.route!.navigator!.canPop())
          ? InkWell(
              onTap: () {
                showBackButtonForNested == true ? Get.back(id: 1) : Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 16.sp,
              ),
            )
          : const SizedBox(),
      elevation: 0,
      actions: [
        showChangeTheme != null && showChangeTheme == true
            ? ChangeThemeButtonWidget()
            : SizedBox(
                width: 56,
              ),
        showChangeLang != null && showChangeLang == true ? ChangeLangWidget() : SizedBox(),
      ],
      actionsIconTheme: IconThemeData(
        size: 32.sp,
      ),
      title: title != null
          ? Center(
              child: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ))
          : const Text("Getx Template mvvm acp"),
      centerTitle: true,
      toolbarHeight: 40.sp,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40.0.sp);
}
