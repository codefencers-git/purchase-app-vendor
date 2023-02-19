// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';

class AppbarWithBackButton extends StatelessWidget {
  AppbarWithBackButton({
    Key? key,
    required this.appbarTitle,
    this.onbackPress,
    this.isShowSecond = true,
    this.elevation = 0,
    this.onHomePress,
  }) : super(key: key);
  String appbarTitle;
  bool isShowSecond;
  double elevation;

  Function? onbackPress;
  Function? onHomePress;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            spreadRadius: 0,
            blurRadius: 5,
            color: AppColors.greyColor2,
          )
        ],
      ),
      child: AppBar(
        leadingWidth: 40,
        elevation: elevation,
        toolbarHeight: 70,
        backgroundColor: AppColors.redColor1,
        leading: InkWell(
          onTap: () {
            if (onbackPress == null) {
              Get.back();
            } else {
              onbackPress!();
            }
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                GlobalImages.appBarBack,
                height: 35,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.7,
              child: Text(
                appbarTitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.whiteColor,
                    fontFamily: AssetsPath.lato,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            isShowSecond == true
                ? InkWell(
                    onTap: () => onHomePress!(),
                    child: Image.asset(
                      GlobalImages.appBarHome,
                      height: 30,
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
