import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/home_page/home_screen.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/appbar/appbarwithback.dart';
import 'package:purchase_vendor/widgets/notification_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            margin: EdgeInsets.only(top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
                NotificationsTile(),
                8.sbh,
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppbarWithBackButton(
        appbarTitle: "Notification",
        isShowSecond: true,
        onbackPress: () {
          Navigator.pop(context);
        },
        onHomePress: () {
          Get.to(HomePageScreen());
        },
      ),
    );
  }
}
