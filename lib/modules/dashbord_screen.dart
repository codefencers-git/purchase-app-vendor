import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/home_page/home_screen.dart';
import 'package:purchase_vendor/modules/my_profile/presentation/my_profile_screen.dart';
import 'package:purchase_vendor/modules/new_design/controller/new_design_controller.dart';
import 'package:purchase_vendor/modules/order_history/presentation/order_history_screen.dart';
import 'package:purchase_vendor/modules/upload_design/upload_design_home.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/strings_utils.dart';
import 'repeat_order/presentation/repeat_order_screen.dart';

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({Key? key}) : super(key: key);

  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen>
    with WidgetsBindingObserver {
  bool rattingCount = false;

  NewDesignController newDesignController = Get.put(NewDesignController());

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    final widgetOptions = [
      const UploadDesignHomeScreen(),
      const OrderHistoryScreen(),
      const RepeatOrderScreen(),
      const MyProfileScreen(),
    ];
    final widgetOptionsHomePage = [
      const HomePageScreen(),
      const OrderHistoryScreen(),
      const RepeatOrderScreen(),
      const MyProfileScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        color: AppColors.primaryColor,
        child: Padding(
          padding: EdgeInsets.only(
            right: SizeUtils.horizontalBlockSize * 0,
            left: SizeUtils.horizontalBlockSize * 0,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            backgroundColor: AppColors.whiteColor,
            elevation: 0,
            selectedFontSize: SizeUtils.fSize_12(),
            unselectedFontSize: SizeUtils.fSize_12(),
            selectedItemColor: AppColors.blackColor,
            unselectedItemColor: AppColors.blackColor,
            unselectedLabelStyle: TextStyle(
              fontSize: SizeUtils.fSize_11(),
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
            selectedLabelStyle: TextStyle(
              fontSize: SizeUtils.fSize_11(),
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
            ),
            currentIndex: StringsUtils.bottomIndex.value,
            // fixedColor: AppColors.primaryColor,
            onTap: onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeUtils.horizontalBlockSize * 1,
                    top: SizeUtils.horizontalBlockSize * 1,
                  ),
                  child: Image.asset(
                    StringsUtils.bottomIndex.value == 0
                        ? AssetsPath.selectDesign
                        : AssetsPath.iconDesign,
                    height: StringsUtils.bottomIndex.value == 0
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.NewDesign,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeUtils.horizontalBlockSize * 1,
                      top: SizeUtils.horizontalBlockSize * 1,
                    ),
                    child: Image.asset(
                      StringsUtils.bottomIndex.value == 1
                          ? AssetsPath.selectHistory
                          : AssetsPath.iconHistory,
                      height: StringsUtils.bottomIndex.value == 1
                          ? SizeUtils.verticalBlockSize * 3
                          : SizeUtils.verticalBlockSize * 2.7,
                    )),
                label: StringsUtils.orderHistory,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeUtils.horizontalBlockSize * 1,
                    top: SizeUtils.horizontalBlockSize * 1,
                  ),
                  child: Image.asset(
                    StringsUtils.bottomIndex.value == 2
                        ? AssetsPath.selectRecOrders
                        : AssetsPath.iconRecOrders,
                    height: StringsUtils.bottomIndex.value == 2
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.repeatOrder,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeUtils.horizontalBlockSize * 1,
                    top: SizeUtils.horizontalBlockSize * 1,
                  ),
                  child: Image.asset(
                    StringsUtils.bottomIndex.value == 3
                        ? AssetsPath.selectVendor
                        : AssetsPath.iconVendor,
                    height: StringsUtils.bottomIndex.value == 3
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.myProfile,
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: StringsUtils.bottomIndex.value,
        children: rattingCount
            ? widgetOptions.map((e) {
                return e;
              }).toList()
            : widgetOptionsHomePage.map((e) {
                return e;
              }).toList(),
      ),
    );
  }

  int tapCount = 1;

  onItemTapped(int index) async {
    setState(() {
      print('$index');
      if (index == 0) {
        rattingCount = true;
      }
      StringsUtils.bottomIndex.value = index;
    });
  }
}
