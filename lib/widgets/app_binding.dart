import 'package:get/get.dart';
import 'package:purchase_vendor/modules/splash/controller/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
