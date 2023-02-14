import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/login/login_screen.dart';
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
  static const String dashBordScreen = '/dashBordScreen';
  static const String repeatOrderScreen = '/repeatOrderScreen';
  static const String orderHistoryScreen = '/orderHistoryScreen';
  static const String newDesignScreen = '/newDesignScreen';
  static const String myProfileScreen = '/myProfileScreen';

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
  ];
}
