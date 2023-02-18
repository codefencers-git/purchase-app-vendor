// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/new_design/presentation/new_design_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/appbar/homepage_appbar.dart';


class UploadDesignHomeScreen extends StatefulWidget {
  const UploadDesignHomeScreen({super.key});

  @override
  State<UploadDesignHomeScreen> createState() => _UploadDesignHomeScreenState();
}

class _UploadDesignHomeScreenState extends State<UploadDesignHomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.redColor1,
        child: Scaffold(
          appBar: _getAppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildVendor(),
                  8.sbh,
                  uploadDesign(),
                ],
              ),
            ),
          ),

        ));
  }

  _getAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: HomePageAppBar(
        onMenuTap: () {

        },
        isDelivered: true,
      ),
    );
  }

  buildVendor() {
    return InkWell(
       onTap: () {
        Get.to(NewDesignScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(
            top: 24.0, left: 20.0, right: 20.0, bottom: 24.0),
        decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: .5, color: AppColors.redColor1),
              bottom: BorderSide(width: .5, color: AppColors.redColor1),
              left: BorderSide(width: .5, color: AppColors.redColor1),
              right: BorderSide(width: .5, color: AppColors.redColor1),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5.0))),
        child: Center(
            child: Image(
          image: AssetImage(GlobalImages.homeVendor),
          height: 178.0,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        )),
      ),
    );
  }

  uploadDesign() {
    return InkWell(
      onTap: () {
        Get.to(NewDesignScreen());
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            color: AppColors.redColor1),
        child: Column(
          children: [
            const Text(
              "Add",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 12.0,
                fontFamily: 'Lato-Light',
              ),
              textAlign: TextAlign.center,
            ),
            4.sbh,
            Text(
              "New Design".toUpperCase(),
              style: TextStyle(
                color: AppColors.yellowColor,
                fontSize: 12.0,
                fontFamily: 'Lato-Light',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
