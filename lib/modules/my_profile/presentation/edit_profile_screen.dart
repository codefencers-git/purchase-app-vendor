import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/home_page/home_screen.dart';
import 'package:purchase_vendor/modules/my_profile/presentation/my_profile_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

import 'package:purchase_vendor/widgets/appbar/appbarwithback.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _callController = TextEditingController();
  TextEditingController _wAController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = 'Moksha';
    _callController.text = '9911122299';
    _wAController.text = '9911122299';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 32.0, bottom: 8.0),
                child: _editProfileSection(context),
              ),
              _buildEditingFields(context),
            ],
          ),
        ),
      ),
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppbarWithBackButton(
        appbarTitle: "Edit Profile",
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

  _editProfileSection(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 3.0),
                    decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: .5, color: AppColors.greyColor),
                          bottom: BorderSide(width: .5, color: AppColors.greyColor),
                          left: BorderSide(width: .5, color: AppColors.greyColor),
                          right: BorderSide(width: .5, color: AppColors.greyColor),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Stack(
                      children: [
                        Image.asset(
                          GlobalImages.profileLogo,
                          width: 102.0,
                          height: 102.0,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 35,
                          right: 35, //give the values according to your requirement
                          child: Image.asset(
                            GlobalImages.editProImage,
                            width: 35.0,
                            height: 35.0,
                            color: AppColors.greyColor7,
                            fit: BoxFit.cover,
                          ),
                          // Image(
                          //   image: AssetImage(GlobalImages.editProImage),
                          //   height: 32.0,
                          //   width: 32.0,
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              8.sbw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Trext(
                    txtData: 'BoutiquesAsia',
                    txtColor: AppColors.redColor1,
                    txtSize: 12.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w400,
                    txtAlign: null,
                  ),
                  4.sbh,
                  Trext(
                    txtData: 'VC313456',
                    txtColor: AppColors.greyColor7,
                    txtSize: 12.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w400,
                    txtAlign: null,
                  ),
                  4.sbh,
                  Trext(
                    txtData: '27/01/2020',
                    txtColor: AppColors.greyColor7,
                    txtSize: 12.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w400,
                    txtAlign: null,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildEditingFields(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          width: width / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Trext(
                  txtData: 'Name',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w400,
                  txtAlign: TextAlign.start,
                ),
              ),
              8.sbh,
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .9, color: AppColors.greyColor7),
                    bottom: BorderSide(width: .9, color: AppColors.greyColor7),
                    left: BorderSide(width: .9, color: AppColors.greyColor7),
                    right: BorderSide(width: .9, color: AppColors.greyColor7),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 11),
                  child: Trext(
                    txtData: 'BoutiquesAsia',
                    txtColor: AppColors.blackColor,
                    txtSize: 14.0,
                    txtFont: 'Lato-Regular',
                    txtLine: 6,
                    txtWeight: FontWeight.w400,
                    txtAlign: TextAlign.start,
                  ),
                ),
              )
              // TextFormField(
              //   cursorHeight: 16.0,
              //   controller: _nameController,
              //   keyboardType: TextInputType.name,
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.black,
              //     fontWeight: FontWeight.w600,
              //   ),
              //   onChanged: (value) {
              //     setState(() {
              //       _nameController.text = value.toString();
              //     });
              //   },
              //   decoration: InputDecoration(
              //     focusColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(3.0),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        16.sbh,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Trext(
                txtData: 'Mobile',
                txtColor: AppColors.blackColor,
                txtSize: 12.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w400,
                txtAlign: TextAlign.start,
              ),
              8.sbh,
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .9, color: AppColors.greyColor7),
                    bottom: BorderSide(width: .9, color: AppColors.greyColor7),
                    left: BorderSide(width: .9, color: AppColors.greyColor7),
                    right: BorderSide(width: .9, color: AppColors.greyColor7),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 11),
                  child: Trext(
                    txtData: '+91 3443382882',
                    txtColor: AppColors.blackColor,
                    txtSize: 14.0,
                    txtFont: 'Lato-Regular',
                    txtLine: 6,
                    txtWeight: FontWeight.w400,
                    txtAlign: TextAlign.start,
                  ),
                ),
              )

              // TextFormField(
              //   controller: _callController,
              //   keyboardType: TextInputType.phone,
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.black,
              //     fontWeight: FontWeight.w600,
              //   ),
              //   onChanged: (value) {
              //     setState(() {
              //       _callController.text = value.toString();
              //     });
              //   },
              //   decoration: InputDecoration(
              //     focusColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(3.0),
              //     ),
              //   ),
              // ),
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Trext(
                txtData: 'WhatsApp',
                txtColor: AppColors.blackColor,
                txtSize: 12.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w400,
                txtAlign: TextAlign.start,
              ),
              8.sbh,
              Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .9, color: AppColors.greyColor7),
                    bottom: BorderSide(width: .9, color: AppColors.greyColor7),
                    left: BorderSide(width: .9, color: AppColors.greyColor7),
                    right: BorderSide(width: .9, color: AppColors.greyColor7),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 11),
                  child: Trext(
                    txtData: '+91 848382882',
                    txtColor: AppColors.blackColor,
                    txtSize: 14.0,
                    txtFont: 'Lato-Regular',
                    txtLine: 6,
                    txtWeight: FontWeight.w400,
                    txtAlign: TextAlign.start,
                  ),
                ),
              )
              // TextFormField(
              //   controller: _wAController,
              //   keyboardType: TextInputType.phone,
              //   style: TextStyle(
              //     fontSize: 16,
              //     color: Colors.black,
              //     fontWeight: FontWeight.w600,
              //   ),
              //   onChanged: (value) {
              //     setState(() {
              //       _wAController.text = value.toString();
              //     });
              //   },
              //   decoration: InputDecoration(
              //     focusColor: Colors.white,
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(3.0),
              //     ),
              //   ),
              // ),
            ]),
          ],
        ),
        8.sbh,
        _buildSubmitButton(context)
      ],
    );
  }

  _buildSubmitButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Get.to(MyProfileScreen());
            },
            child: Container(
              // width: width / 3,
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 37.0),
              decoration:
                  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(5.0)), color: AppColors.redColor1),
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 14.0,
                  fontFamily: 'Lato-Regular',
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
