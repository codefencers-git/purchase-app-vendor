import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';
import 'package:purchase_vendor/utils/strings_utils.dart';
import 'package:purchase_vendor/widgets/app_binding.dart';
import 'package:purchase_vendor/widgets/my_behavior.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PurchaseVendorApp extends StatelessWidget {
  const PurchaseVendorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: StringsUtils.appName,
      initialBinding: AppBinding(),
      theme: AppColors.themeData,
      initialRoute: Routes.splash,
      getPages: Routes.routes,
      builder: (context, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: GestureDetector(
            onTap: () {
              // Utils.hideKeyboard(context);
            },
            child: ScrollConfiguration(behavior: MyBehavior(), child: child!),
          ),
        );
      },
    );
  }
}
