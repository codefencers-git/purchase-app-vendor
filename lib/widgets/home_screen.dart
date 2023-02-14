// import 'package:fifa_app/ads/open_ad.dart';
// import 'package:fifa_app/modules/dashbord/controller/dashbord_controller.dart';
// import 'package:fifa_app/modules/dashbord/screen/country/country_screen.dart';
// import 'package:fifa_app/utils/app_colors.dart';
// import 'package:fifa_app/utils/strings_utils.dart';
// import 'package:fifa_app/widgets/app_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../components/bottom_navigation_icons.dart';
// import '../../components/wavy_bottom_bar.dart';
// import '../../ranking/screen/ranking_screen.dart';
// import '../../setting/setting_screen.dart';
// // StringsUtils.
// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen>  with WidgetsBindingObserver {
//   DashBordController dashBordController = Get.find();
//
//   final widgetOptions = [
//     RankingScreen(),
//     const CountryScreen(),
//     SettingScreen(),
//   ];
//   bool isPaused = false;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     WidgetsBinding.instance.removeObserver(this);
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     // TODO: implement didChangeAppLifecycleState
//
//     super.didChangeAppLifecycleState(state);
//     if (state == AppLifecycleState.paused) {
//       isPaused = true;
//       print("------AppLifecycleState---1-->$state");
//     }
//     if (state == AppLifecycleState.inactive && isPaused) {
//       print("------AppLifecycleState---2->$state");
//       AppOpenAdManager.showOpenAdIfAvailable();
//       isPaused = false;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Stack(
//           children: [
//             Obx(()=> widgetOptions.elementAt(    dashBordController.bottomNavigationBarItemIndex.value)),
//             WavyBottomBar(),
//             BottomNavigationIcons(),
//           ],
//         ),
//       ),
//     );
//   }
// }
