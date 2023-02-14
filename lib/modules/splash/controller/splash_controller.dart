import 'package:get/get.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigation.popAndPushNamed(
        Routes.loginScreen,
      );
    });
  }
}
