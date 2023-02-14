// import 'package:fifa_app/ads/open_ad.dart';
// import 'package:fifa_app/modules/dashbord/controller/dashbord_controller.dart';
// import 'package:fifa_app/modules/dashbord/screen/country/country_screen.dart';
// import 'package:fifa_app/modules/ranking/screen/ranking_screen.dart';
// import 'package:fifa_app/modules/setting/setting_screen.dart';
// import 'package:fifa_app/utils/app_colors.dart';
// import 'package:fifa_app/utils/size_utils.dart';
// import 'package:fifa_app/utils/strings_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class DashBordScreen extends StatefulWidget {
//   const DashBordScreen({Key? key}) : super(key: key);
//
//   @override
//   State<DashBordScreen> createState() => _DashBordScreenState();
// }
//
// class _DashBordScreenState extends State<DashBordScreen> with WidgetsBindingObserver {
//   final DashBordController dashBordController = Get.find();
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
//     SizeUtils().init(context);
//     return Scaffold(
//       backgroundColor: AppColors.primaryColor,
//       bottomNavigationBar: Container(
//         color: AppColors.primaryColor,
//         child: Padding(
//           padding: EdgeInsets.only(
//             right: SizeUtils.horizontalBlockSize * 2,
//             left: SizeUtils.horizontalBlockSize * 0,
//           ),
//           child: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             showUnselectedLabels: true,
//             backgroundColor: AppColors.primaryColor,
//             elevation: 0,
//             selectedFontSize: SizeUtils.fSize_12(),
//             unselectedFontSize: SizeUtils.fSize_12(),
//             unselectedItemColor: AppColors.white,
//             unselectedLabelStyle: TextStyle(
//               fontSize: SizeUtils.fSize_14(),
//               fontWeight: FontWeight.w500,
//               color: AppColors.white,
//             ),
//             selectedLabelStyle: TextStyle(
//               fontSize: SizeUtils.fSize_14(),
//               fontWeight: FontWeight.w500,
//               color: AppColors.white,
//             ),
//             currentIndex: StringsUtils.bottomIndex.value,
//             fixedColor: AppColors.yellowColor,
//             onTap: onItemTapped,
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Padding(
//                   padding: EdgeInsets.only(
//                     bottom: SizeUtils.horizontalBlockSize * 1,
//                     top: SizeUtils.horizontalBlockSize * 0,
//                   ),
//                   child: Icon(
//                     Icons.newspaper,
//                     size: SizeUtils.verticalBlockSize * 3.3,
//                   ),
//                 ),
//                 label: StringsUtils.ranking,
//               ),
//               BottomNavigationBarItem(
//                 icon: Padding(
//                   padding: EdgeInsets.only(
//                     bottom: SizeUtils.horizontalBlockSize * 1,
//                     top: SizeUtils.horizontalBlockSize * 0,
//                   ),
//                   child: Icon(
//                     Icons.live_tv,
//                     size: SizeUtils.verticalBlockSize * 3.3,
//                   ),
//                 ),
//                 label: StringsUtils.live,
//               ),
//               BottomNavigationBarItem(
//                 icon: Padding(
//                   padding: EdgeInsets.only(
//                     bottom: SizeUtils.horizontalBlockSize * 1,
//                     top: SizeUtils.horizontalBlockSize * 0,
//                   ),
//                   child: Icon(
//                     Icons.settings,
//                     size: SizeUtils.verticalBlockSize * 3.3,
//                   ),
//                 ),
//                 label: StringsUtils.setting,
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Center(
//         child: widgetOptions.elementAt(StringsUtils.bottomIndex.value),
//       ),
//     );
//   }
//
//   void onItemTapped(int index) {
//     setState(() {
//       StringsUtils.bottomIndex.value = index;
//     });
//   }
//
//   Future<DateTime?> selectDate() async {
//     return await showDatePicker(
//       context: context,
//       initialDatePickerMode: DatePickerMode.day,
//       initialDate: DateTime.parse(dashBordController.dateCalendar[2].date.toString()),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.light().copyWith(
//             primaryColor: AppColors.black,
//             buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
//             colorScheme: const ColorScheme.light(
//               primary: AppColors.black,
//             ).copyWith(
//               secondary: AppColors.black,
//             ),
//           ),
//           child: child ?? const SizedBox(),
//         );
//       },
//       // firstDate:
//       firstDate: DateTime.now().subtract(
//         const Duration(days: 300),
//       ),
//       lastDate: DateTime.now().add(
//         const Duration(days: 300),
//       ),
//     );
//   }
// }
