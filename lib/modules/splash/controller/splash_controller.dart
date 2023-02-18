import 'package:get/get.dart';
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      var value = AppSharedPreference.onBoarding;
      print("value:- ${value}");


      AppSharedPreference.onBoarding == null
          ? Navigation.popAndPushNamed(Routes.onBordingScreen)
          : AppSharedPreference.jwtToken == null
          ? Navigation.popAndPushNamed(Routes.loginScreen)
          : Navigation.popAndPushNamed(Routes.dashBordScreen);
      // Navigation.popAndPushNamed(
      //   Routes.loginScreen,
      // );
    });
  }
}
