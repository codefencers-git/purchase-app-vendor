// ignore_for_file: must_be_immutable, avoid_print, prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/login/presentation/login_screen.dart';
import 'package:purchase_vendor/modules/common_pages/notifications_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

import 'package:shared_preferences/shared_preferences.dart';

class HomePageAppBar extends StatefulWidget {
  final bool isDelivered;

  HomePageAppBar({Key? key, required this.onMenuTap, required this.isDelivered}) : super(key: key);

  VoidCallback onMenuTap;

  @override
  State<HomePageAppBar> createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  // final _allListService = Get.find<AllListService>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.redColor1,
      toolbarHeight: 70,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                child: Image.asset(
                  GlobalImages.homeBarBroad,
                  height: 32,
                  width: 32,
                ),
              ),
              InkWell(
                onTap: () async {

                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(builder: (BuildContext context) => const LoginScreen()),
                    ModalRoute.withName(Routes.onBordingScreen),
                  );
                },
                child: Image.asset(
                  GlobalImages.homeBarsearch,
                  height: 32,
                  width: 32,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(NotificationScreen());
                },
                child: Image.asset(
                  GlobalImages.homeBarBell,
                  height: 32,
                  width: 32,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
