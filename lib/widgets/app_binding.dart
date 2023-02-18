import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/forgot_password/controller/forgot_password_controller_screen.dart';
import 'package:purchase_vendor/modules/auth/login/controller/login_controller_screen.dart';
import 'package:purchase_vendor/modules/auth/new_password/controller/new_password_controller.dart';
import 'package:purchase_vendor/modules/auth/otp_verification/controller/otp_verification_controller_screen.dart';
import 'package:purchase_vendor/modules/splash/controller/splash_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
    Get.put<LoginController>(LoginController());
    Get.put<ForgotPasswordController>(ForgotPasswordController());
    Get.put<NewPasswordController>(NewPasswordController());
    Get.put<OtpVerificationController>(OtpVerificationController());
  }
}
