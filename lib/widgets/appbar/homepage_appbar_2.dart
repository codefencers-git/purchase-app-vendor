// ignore_for_file: must_be_immutable, avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/common_pages/notifications_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';

class HomePageAppBarFill extends StatefulWidget {
  final bool isDelivered;

  HomePageAppBarFill({Key? key, required this.onMenuTap, required this.isDelivered}) : super(key: key);

  VoidCallback onMenuTap;

  @override
  State<HomePageAppBarFill> createState() => _HomePageAppBarFillState();
}

class _HomePageAppBarFillState extends State<HomePageAppBarFill> {
  // final _allListService = Get.find<AllListService>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //titleSpacing: 5,
      backgroundColor: AppColors.redColor1,
      toolbarHeight: 70,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/appbar_app_icon.png',
                  height: 20,
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Image.asset(
                  GlobalImages.homeBarCall,
                  height: 20,
                ),
              ),
              16.sbw,
              InkWell(
                child: Image.asset(
                  GlobalImages.homeBarWA,
                  height: 20,
                ),
              ),
              16.sbw,
              InkWell(
                onTap: () {
                  Get.to(NotificationScreen());
                },
                child: Image.asset(
                  GlobalImages.homeBarBellFill,
                  height: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
