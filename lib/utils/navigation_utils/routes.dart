import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/login/presentation/login_screen.dart';
import 'package:purchase_vendor/modules/auth/new_password/presentation/set_new_password_screen.dart';
import 'package:purchase_vendor/modules/auth/otp_verification/presentation/otp_verification_screen.dart';
import 'package:purchase_vendor/modules/common_pages/onbording_screen.dart';
import 'package:purchase_vendor/modules/dashbord_screen.dart';
import 'package:purchase_vendor/modules/my_profile/presentation/my_profile_screen.dart';
import 'package:purchase_vendor/modules/new_design/presentation/new_design_screen.dart';
import 'package:purchase_vendor/modules/order_history/presentation/order_history_screen.dart';
import 'package:purchase_vendor/modules/repeat_order/presentation/repeat_order_screen.dart';
import 'package:purchase_vendor/modules/splash/screen/splash_screen.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  // get started
  static const String splash = '/splash';
  static const String loginScreen = '/loginScreen';
  static const String onBordingScreen = '/onBordingScreen';
  static const String dashBordScreen = '/dashBordScreen';
  static const String repeatOrderScreen = '/repeatOrderScreen';
  static const String orderHistoryScreen = '/orderHistoryScreen';
  static const String newDesignScreen = '/newDesignScreen';
  static const String myProfileScreen = '/myProfileScreen';
  static const String otpVerificationScreen = '/otpVerificationScreen';
  static const String newPasswordScreen = '/newPasswordScreen';

  static List<GetPage<dynamic>> routes = [
    GetPage<dynamic>(
      name: splash,
      page: () => const SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loginScreen,
      page: () => const LoginScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: onBordingScreen,
      page: () => OnBordingScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: dashBordScreen,
      page: () => DashBordScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: repeatOrderScreen,
      page: () => RepeatOrderScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: orderHistoryScreen,
      page: () => OrderHistoryScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: newDesignScreen,
      page: () => NewDesignScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: myProfileScreen,
      page: () => MyProfileScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: newPasswordScreen,
      page: () => NewPasswordScreen(),
      transition: defaultTransition,
    ),
  ];
}
