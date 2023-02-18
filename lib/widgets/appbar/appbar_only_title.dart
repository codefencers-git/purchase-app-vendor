// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';

class AppBarOnlyTitle extends StatelessWidget {
  AppBarOnlyTitle({
    Key? key,
    required this.appbarTitle,
    this.elevation = 0,
  }) : super(key: key);
  String appbarTitle;
  double elevation;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: elevation,
      toolbarHeight: 70,
      backgroundColor: AppColors.redColor1,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Text(
              appbarTitle,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 18, color: AppColors.whiteColor, fontFamily: 'Lato-Regular', fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
