import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/widgets/custom_indicator.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, this.tabs});

  final List<Widget>? tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelPadding: EdgeInsets.symmetric(horizontal: SizeUtils.horizontalBlockSize * 4),
      splashFactory: NoSplash.splashFactory,
      padding: EdgeInsets.zero,
      isScrollable: true,
      indicatorColor: AppColors.white,
      labelColor: AppColors.white,
      indicatorWeight: 3,
      indicator: const CustomTabIndicator(color: AppColors.white, indicatorHeight: 3),
      labelStyle: TextStyle(fontSize: SizeUtils.fSize_14(), fontWeight: FontWeight.w500, color: AppColors.white),
      unselectedLabelColor: AppColors.unselectedColor,
      overlayColor: MaterialStateColor.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.transparent;
          }
          if (states.contains(MaterialState.focused)) {
            return Colors.transparent;
          } else if (states.contains(MaterialState.hovered)) {
            return Colors.transparent;
          }

          return Colors.transparent;
        },
      ),
      tabs: tabs ?? [],
    );
  }
}
