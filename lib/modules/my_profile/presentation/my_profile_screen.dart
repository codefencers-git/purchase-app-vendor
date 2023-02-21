import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/modules/auth/login/presentation/login_screen.dart';
import 'package:purchase_vendor/modules/my_profile/presentation/edit_profile_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbar_only_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class MyProfileScreen extends StatelessWidget {
//   const MyProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.redColor1,
      child: Scaffold(
        appBar: _getAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            color: AppColors.whiteColor2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  margin: const EdgeInsets.only(top: 32.0, bottom: 8.0),
                  child: _editProfileSection(context),
                ),
                8.sbh,
                _getTitleLabels(context),
                8.sbh,
                _getSettingOptions(),
                8.sbh,
                _getProfileLogo(),
                14.sbh,
                _addressblock(),
                45.sbh,
                _buildLogoutButton(),
                2.sbh,
                _getCurrentVersion(),
                16.sbh,
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
      child: AppBarOnlyTitle(
        appbarTitle: 'My Profile',
      ),
    );
  }

  _editProfileSection(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(width: .5, color: AppColors.greyColor),
                        bottom: BorderSide(width: .5, color: AppColors.greyColor),
                        left: BorderSide(width: .5, color: AppColors.greyColor),
                        right: BorderSide(width: .5, color: AppColors.greyColor),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Image(
                    image: AssetImage(GlobalImages.profileLogo),
                    width: 102.0,
                    height: 102.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // 6.sbw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Trext(
                    txtData: 'Moksha',
                    txtColor: AppColors.redColor1,
                    txtSize: 12.0,
                    txtFont: AssetsPath.lato,
                    txtWeight: FontWeight.w600,
                    txtAlign: TextAlign.start,
                  ),
                  4.sbh,
                  Trext(
                    txtData: '#VC313456',
                    txtColor: AppColors.greyColor2,
                    txtSize: 12.0,
                    txtFont: AssetsPath.lato,
                    txtWeight: FontWeight.w400,
                    txtAlign: TextAlign.start,
                  ),
                  4.sbh,
                  Trext(
                    txtData: '27/01/2020',
                    txtColor: AppColors.greyColor2,
                    txtSize: 12.0,
                    txtFont: AssetsPath.lato,
                    txtWeight: FontWeight.w400,
                    txtAlign: TextAlign.start,
                  ),
                ],
              ),
              // 60.sbw,
              Spacer(),
              Container(
                alignment: Alignment.topRight,
                width: width / 3,
                child: InkWell(
                  onTap: (() {
                    Get.to(EditProfileScreen());
                  }),
                  child: Image(
                    image: AssetImage(GlobalImages.editIcon),
                    height: 24.0,
                    width: 24.0,
                  ),
                ),
              )
            ],
          ),
          18.sbh,
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.whiteColor2,
                      child: Image(
                        image: AssetImage(GlobalImages.callIcon),
                        height: 35.0,
                        width: 35.0,
                      ),
                    ),
                    4.sbw,
                    Trext(
                      txtData: '+919911122299',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 0.5,
                            color: Color(0xFFC8C8C8),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Image.asset(
                          "assets/icons/ic_WA.png",
                          height: 25.0,
                          width: 25,
                        ),
                      ),
                    ),
                    // assets/icons/ic_WA.png
                    // CircleAvatar(
                    //   backgroundColor: AppColors.whiteColor2,
                    //   child: Image(
                    //     image: AssetImage(GlobalImages.waIcon),
                    //     height: 35.0,
                    //     width:  35.0,
                    //   ),
                    // ),
                    4.sbw,
                    Trext(
                      txtData: '+919911122299',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                // 0.sbw
              ],
            ),
          )
        ],
      ),
    );
  }

  _getTitleLabels(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: Container(
        margin: const EdgeInsets.only(
          top: 8.0,
        ),
        color: AppColors.greyColor7,
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 24.0,
        ),
        child: Trext(
          txtData: 'Setting',
          txtColor: AppColors.blackColor,
          txtSize: 18.0,
          txtFont: AssetsPath.lato,
          txtWeight: FontWeight.w500,
          txtAlign: TextAlign.start,
        ),
      ),
    );
  }

  _getSettingOptions() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 7,
                right: 8,
                left: 8,
              ),
              child: Trext(
                txtData: 'Size',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: AssetsPath.lato,
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.start,
              ),
            ),
          ),
          const Divider(
            height: 2.0,
            color: AppColors.greyColor1,
          ),
          2.sbh,
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Trext(
                txtData: 'Terms & Conditions',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: AssetsPath.lato,
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.start,
              ),
            ),
          ),
          Divider(
            height: 2.0,
            color: AppColors.greyColor1,
          ),
          2.sbh,
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Trext(
                txtData: 'Privacy Policy',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: AssetsPath.lato,
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.start,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _getProfileLogo() {
    return Container(
      margin: const EdgeInsets.only(top: 52.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Image(
        image: AssetImage(GlobalImages.splashIcon),
        height: 24.0,
      ),
    );
  }

  _addressblock() {
    String address = ' 2406, Hardhyan Singh Marg, Block 37J, Nai Walan, Karol Bagh, New Delhi, Delhi 110005';
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 12.0),
            children: [
              TextSpan(
                text: 'Address: ',
                style: TextStyle(
                    color: Colors.black, fontFamily: AssetsPath.lato, fontWeight: FontWeight.w500, fontSize: 12.0),
              ),
              TextSpan(
                text: address,
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontFamily: 'Lato-Thin',
                  fontSize: 12.0,
                ),
              )
            ],
          ),
        ));
  }

  _buildLogoutButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () async {
              AppSharedPreference.clear();
              Navigation.replaceAll(Routes.loginScreen);
            },
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 13.0, right: 30),
              decoration:
                  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(5.0)), color: AppColors.redColor1),
              child: Row(
                children: [
                  Icon(
                    Icons.power_settings_new,
                    color: AppColors.whiteColor,
                    size: 25,
                  ),
                  3.sbw,
                  Text(
                    'LOGOUT',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12.0,
                      fontFamily: AssetsPath.lato,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _getCurrentVersion() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Trext(
        txtData: 'V 1.0.1',
        txtColor: AppColors.blackColor,
        txtSize: 10.0,
        txtFont: 'Lato-Light',
        txtWeight: FontWeight.w300,
        txtAlign: TextAlign.start,
      ),
    );
  }
}
