import 'package:flutter/material.dart';
import 'package:purchase_vendor/modules/my_profile/presentation/my_profile_screen.dart';
import 'package:purchase_vendor/modules/order_history/presentation/order_history_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/strings_utils.dart';
import 'new_design/presentation/new_design_screen.dart';
import 'repeat_order/presentation/repeat_order_screen.dart';

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({Key? key}) : super(key: key);

  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> with WidgetsBindingObserver {
  final widgetOptions = [
    const MyProfileScreen(),
    const NewDesignScreen(),
    const OrderHistoryScreen(),
    const RepeatOrderScreen(),
  ];
  int rattingCount = 0;

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);

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
            backgroundColor: AppColors.primaryColor,
            elevation: 0,
            selectedFontSize: SizeUtils.fSize_12(),
            unselectedFontSize: SizeUtils.fSize_12(),
            selectedItemColor: AppColors.white,
            unselectedItemColor: AppColors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: SizeUtils.fSize_11(),
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
            selectedLabelStyle: TextStyle(
              fontSize: SizeUtils.fSize_11(),
              fontWeight: FontWeight.w400,
              color: AppColors.white,
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
                    AssetsPath.home,
                    color: StringsUtils.bottomIndex.value == 0 ? AppColors.white : AppColors.white,
                    height: StringsUtils.bottomIndex.value == 0
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.home,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeUtils.horizontalBlockSize * 1,
                      top: SizeUtils.horizontalBlockSize * 1,
                    ),
                    child: Image.asset(
                      AssetsPath.series,
                      color: StringsUtils.bottomIndex.value == 1 ? AppColors.white : AppColors.white,
                      height: StringsUtils.bottomIndex.value == 1
                          ? SizeUtils.verticalBlockSize * 3
                          : SizeUtils.verticalBlockSize * 2.7,
                    )),
                label: StringsUtils.series,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeUtils.horizontalBlockSize * 1,
                    top: SizeUtils.horizontalBlockSize * 1,
                  ),
                  child: Image.asset(
                    AssetsPath.calendar,
                    color: StringsUtils.bottomIndex.value == 2 ? AppColors.white : AppColors.white,
                    height: StringsUtils.bottomIndex.value == 2
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.matches,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeUtils.horizontalBlockSize * 1,
                    top: SizeUtils.horizontalBlockSize * 1,
                  ),
                  child: Image.asset(
                    AssetsPath.video,
                    color: StringsUtils.bottomIndex.value == 3 ? AppColors.white : AppColors.white,
                    height: StringsUtils.bottomIndex.value == 3
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.videos,
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeUtils.horizontalBlockSize * 1,
                    top: SizeUtils.horizontalBlockSize * 1,
                  ),
                  child: Image.asset(
                    AssetsPath.more,
                    color: StringsUtils.bottomIndex.value == 4 ? AppColors.white : AppColors.white,
                    height: StringsUtils.bottomIndex.value == 4
                        ? SizeUtils.verticalBlockSize * 3
                        : SizeUtils.verticalBlockSize * 2.7,
                  ),
                ),
                label: StringsUtils.more,
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: StringsUtils.bottomIndex.value,
        children: widgetOptions.map((e) => e).toList(),
      ),
    );
  }

  int tapCount = 1;

  onItemTapped(int index) async {
    setState(() {
      StringsUtils.bottomIndex.value = index;
      if (StringsUtils.bottomIndex.value == 0) {
        rattingCount++;
      }
    });
    if (tapCount == 1 || tapCount > 6) {
      tapCount = 1;
      // InterstitalAd.showInterstitialAd(isWithOutNavigation: true, eventName: eventName(index: index, tap: tapCount));
    }
    tapCount++;
  }
}
