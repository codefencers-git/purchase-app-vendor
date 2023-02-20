import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:purchase_vendor/modules/new_design/controller/new_design_controller.dart';
import 'package:purchase_vendor/modules/new_design/design_page/design_details_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbar_only_title.dart';
import 'package:purchase_vendor/widgets/drop_button.dart';

class NewDesignScreen extends StatefulWidget {
  @override
  State<NewDesignScreen> createState() => _NewDesignScreenState();
}

class _NewDesignScreenState extends State<NewDesignScreen> {
  NewDesignController newDesignController = Get.find();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _uploadDesignImage(),
              8.sbh,
              _firstRow(),
              8.sbh,
              _secondRow(),
              8.sbh,
              _thirdRow(),
              8.sbh,
              _selectGenderRow(),
              20.sbh,
              _getDescriptionTitle(),
              8.sbh,
              _getFabricBox(),
              8.sbh,
              _getSizesBox(),
              8.sbh,
              _getColorsBox(),
              24.sbh,
              _getPriceTitle(),
              8.sbh,
              _getPriceBox(),
              16.sbh,
              _buildSubmit(),
            ],
          ),
        ),
      ),
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppBarOnlyTitle(
        appbarTitle: 'New Design',
      ),
    );
  }

  _uploadDesignImage() {
    return Obx(
      () => GestureDetector(
        onTap: () {
          newDesignController.fileTeamLogo(name: "FirstImage");
        },
        child: newDesignController.firstImage.isNotEmpty
            ? Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(
                    top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
                decoration: BoxDecoration(
                  color: AppColors.greyColor5,
                  border: const Border(
                    top: BorderSide(width: .5, color: AppColors.greyColor),
                    bottom: BorderSide(width: .5, color: AppColors.greyColor),
                    left: BorderSide(width: .5, color: AppColors.greyColor),
                    right: BorderSide(width: .5, color: AppColors.greyColor),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Image.file(
                  File(
                    newDesignController.firstImage.value,
                  ),
                  fit: BoxFit.cover,
                ),
              )
            : Container(
                height: 200,
                margin: const EdgeInsets.only(
                    top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
                decoration: BoxDecoration(
                  color: AppColors.greyColor5,
                  border: const Border(
                    top: BorderSide(width: .5, color: AppColors.greyColor),
                    bottom: BorderSide(width: .5, color: AppColors.greyColor),
                    left: BorderSide(width: .5, color: AppColors.greyColor),
                    right: BorderSide(width: .5, color: AppColors.greyColor),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          GlobalImages.uploadImage,
                          color: AppColors.greyColor,
                          height: 40,
                          width: 40,
                        ),
                        Positioned(
                          right: 16,
                          top: 7,
                          child: Container(
                            // color: ,
                            height: 8.5,
                            width: 8.5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1.5, color: AppColors.redColor1)),
                          ),
                        ),
                        Positioned(
                          right: 2.8,
                          top: 23,
                          child: Icon(
                            Icons.arrow_upward,
                            size: 12,
                            color: AppColors.redColor1,
                          ),
                        )
                      ],
                    ),
                    4.sbh,
                    Trext(
                      txtData: 'Upload Design Image',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                      txtAlign: null,
                    ),
                  ],
                )),
              ),
      ),
    );
  }

  _firstRow() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Style No.',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border: Border(
                            top: BorderSide(
                                width: .5, color: AppColors.blackColor),
                            bottom: BorderSide(
                                width: .5, color: AppColors.blackColor),
                            left: BorderSide(
                                width: .5, color: AppColors.blackColor),
                            right: BorderSide(
                                width: .5, color: AppColors.blackColor),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, top: 13),
                          child: Trext(
                            txtData: 'SW',
                            txtColor: AppColors.greyColor7,
                            txtSize: 13.0,
                            txtFont: AssetsPath.lato,
                            txtLine: 6,
                            txtWeight: FontWeight.w600,
                            txtAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    3.sbw,
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 200,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          border: Border(
                            top: BorderSide(
                                width: .5, color: AppColors.blackColor),
                            bottom: BorderSide(
                                width: .5, color: AppColors.blackColor),
                            left: BorderSide(
                                width: .5, color: AppColors.blackColor),
                            right: BorderSide(
                                width: .5, color: AppColors.blackColor),
                          ),
                        ),
                        child: TextFormField(
                          controller: newDesignController.styleNoController,
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.transparent,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            focusColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(7),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          16.sbw,
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Brands',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: dropDown(
                    dropDownList: newDesignController.brandsDropDownList,
                    dropDownValue: newDesignController.brandsDropDownValue,
                    onChanged: (value) {
                      newDesignController.brandsDropDownValue.value =
                          value.toString();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _secondRow() {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width / 2.22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Category',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                dropDown(
                  dropDownList: newDesignController.categoryDropDownList,
                  dropDownValue: newDesignController.categoryDropDownValue,
                  onChanged: (value) {
                    newDesignController.categoryDropDownValue.value =
                        value.toString();
                  },
                ),
              ],
            ),
          ),
          16.sbw,
          SizedBox(
            width: width / 2.32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Lot No.',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                Container(
                  width: 200,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border(
                      top: BorderSide(width: .5, color: AppColors.blackColor),
                      bottom:
                          BorderSide(width: .5, color: AppColors.blackColor),
                      left: BorderSide(width: .5, color: AppColors.blackColor),
                      right: BorderSide(width: .5, color: AppColors.blackColor),
                    ),
                  ),
                  child: TextFormField(
                    controller: newDesignController.lotNoController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.transparent,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide.none),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _thirdRow() {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SizeUtils.horizontalBlockSize * 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Seasons',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                dropDown(
                  dropDownList: newDesignController.seasonsDropDownList,
                  dropDownValue: newDesignController.seasonsDropDownValue,
                  onChanged: (value) {
                    newDesignController.seasonsDropDownValue.value =
                        value.toString();
                  },
                ),
              ],
            ),
          ),
          16.sbw,
          SizedBox(
            width: width / 2.32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Designer',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                Container(
                  width: 200,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border: Border(
                      top: BorderSide(width: .5, color: AppColors.blackColor),
                      bottom:
                          BorderSide(width: .5, color: AppColors.blackColor),
                      left: BorderSide(width: .5, color: AppColors.blackColor),
                      right: BorderSide(width: .5, color: AppColors.blackColor),
                    ),
                  ),
                  child: TextFormField(
                    controller: newDesignController.designerController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.transparent,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide.none),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _selectGenderRow() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Trext(
            txtData: 'Gender',
            txtColor: AppColors.blackColor,
            txtSize: 14.0,
            txtFont: AssetsPath.lato,
            txtWeight: FontWeight.w500,
            txtAlign: TextAlign.start,
          ),
          8.sbh,
          Row(
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Radio(
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: 'Female',
                      groupValue: newDesignController.gender,
                      onChanged: ((value) {
                        setState(() {
                          newDesignController.gender = value.toString();
                        });
                      }),
                      activeColor: AppColors.blackColor,
                    ),
                    Trext(
                      txtData: 'Female',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              16.sbw,
              SizedBox(
                child: Row(
                  children: [
                    Radio(
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: 'Male',
                      groupValue: newDesignController.gender,
                      onChanged: ((value) {
                        setState(() {
                          newDesignController.gender = value.toString();
                        });
                      }),
                      activeColor: AppColors.blackColor,
                    ),
                    Trext(
                      txtData: 'Male',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _getDescriptionTitle() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Trext(
            txtData: 'Design Description',
            txtColor: AppColors.blackColor,
            txtSize: 16.0,
            txtFont: AssetsPath.lato,
            txtWeight: FontWeight.w500,
            txtAlign: TextAlign.start,
          ),
          8.sbh,
          Container(
            height: 1.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.redColor1,
                AppColors.whiteColor,
              ],
            )),
          ),
          8.sbh,
        ],
      ),
    );
  }

  _getFabricBox() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _getTitle('Fabric'),
          8.sbh,
          SizedBox(
            child: TextFormField(
              controller: newDesignController.fabricController,
              // readOnly: true,
              keyboardType: TextInputType.text,
              cursorColor: Colors.transparent,

              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              onChanged: (value) {
                // setState(() {
                //   newDesignController.fabricController.text = value;
                // });
              },
              decoration: InputDecoration(
                hintText: "Fabric",
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: AppColors.redColor,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: AppColors.redColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: AppColors.redColor,
                  ),
                ),
                focusColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _getSizesBox() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getTitle('Size'),
          8.sbh,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _getCustomCheckBox(
                  height: newDesignController.sButtonSelect == true ? 18 : 18,
                  width: newDesignController.sButtonSelect == true ? 18 : 18,
                  child: newDesignController.sButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.sButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.sButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: 'S',
                  onTap: () {
                    setState(() {
                      newDesignController.sButtonSelect =
                          !newDesignController.sButtonSelect!;
                      newDesignController.sTextButtonSelect.value = "S";
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: newDesignController.mButtonSelect == true ? 18 : 18,
                  width: newDesignController.mButtonSelect == true ? 18 : 18,
                  child: newDesignController.mButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.mButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.mButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: 'M',
                  onTap: () {
                    setState(() {
                      newDesignController.mButtonSelect =
                          !newDesignController.mButtonSelect!;
                      newDesignController.mTextButtonSelect.value = "M";
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: newDesignController.lButtonSelect == true ? 18 : 18,
                  width: newDesignController.lButtonSelect == true ? 18 : 18,
                  child: newDesignController.lButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.lButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.lButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: 'L',
                  onTap: () {
                    setState(() {
                      newDesignController.lButtonSelect =
                          !newDesignController.lButtonSelect!;
                      newDesignController.lTextButtonSelect.value = "L";
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: newDesignController.xLButtonSelect == true ? 18 : 18,
                  width: newDesignController.xLButtonSelect == true ? 18 : 18,
                  child: newDesignController.xLButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.xLButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.xLButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: 'XL',
                  onTap: () {
                    setState(() {
                      newDesignController.xLButtonSelect =
                          !newDesignController.xLButtonSelect!;
                      newDesignController.xLTextButtonSelect.value = "XL";
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height:
                      newDesignController.twoXlButtonSelect == true ? 18 : 18,
                  width:
                      newDesignController.twoXlButtonSelect == true ? 18 : 18,
                  child: newDesignController.twoXlButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.twoXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.twoXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: '2XL',
                  onTap: () {
                    setState(() {
                      newDesignController.twoXlButtonSelect =
                          !newDesignController.twoXlButtonSelect!;
                      newDesignController.twoXlTextButtonSelect.value = "2XL";
                    });
                  }),
            ],
          ),
          8.sbh,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _getCustomCheckBox(
                  height:
                      newDesignController.threeXlButtonSelect == true ? 18 : 18,
                  width:
                      newDesignController.threeXlButtonSelect == true ? 18 : 18,
                  child: newDesignController.threeXlButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.threeXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.threeXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: '3XL',
                  onTap: () {
                    setState(() {
                      newDesignController.threeXlButtonSelect =
                          !newDesignController.threeXlButtonSelect!;
                      newDesignController.threeXlTextButtonSelect.value = "3XL";
                    });
                  }),
              // 0.1.sbw,
              _getCustomCheckBox(
                  height:
                      newDesignController.fourXlButtonSelect == true ? 18 : 18,
                  width:
                      newDesignController.fourXlButtonSelect == true ? 18 : 18,
                  child: newDesignController.fourXlButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.fourXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.fourXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: '4XL',
                  onTap: () {
                    setState(() {
                      newDesignController.fourXlButtonSelect =
                          !newDesignController.fourXlButtonSelect!;
                      newDesignController.fourXlTextButtonSelect.value = "4XL";
                    });
                  }),
              // 8.sbw,
              _getCustomCheckBox(
                  height:
                      newDesignController.fiveXlButtonSelect == true ? 18 : 18,
                  width:
                      newDesignController.fiveXlButtonSelect == true ? 18 : 18,
                  child: newDesignController.fiveXlButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.fiveXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.fiveXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: '5XL',
                  onTap: () {
                    setState(() {
                      newDesignController.fiveXlButtonSelect =
                          !newDesignController.fiveXlButtonSelect!;
                      newDesignController.fiveXlTextButtonSelect.value = "5XL";
                    });
                  }),
              // 8.sbw,
              _getCustomCheckBox(
                  height:
                      newDesignController.sizeXlButtonSelect == true ? 18 : 18,
                  width:
                      newDesignController.sizeXlButtonSelect == true ? 18 : 18,
                  child: newDesignController.sizeXlButtonSelect == true
                      ? const Icon(
                          Icons.check,
                          size: 14,
                          color: Colors.white,
                        )
                      : const SizedBox(),
                  borderColor: newDesignController.sizeXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.grey,
                  color: newDesignController.sizeXlButtonSelect == true
                      ? AppColors.redColor
                      : Colors.white,
                  itemName: '6XL',
                  onTap: () {
                    setState(() {
                      newDesignController.sizeXlButtonSelect =
                          !newDesignController.sizeXlButtonSelect!;
                      newDesignController.sizeXlTextButtonSelect.value = "6XL";
                    });
                  }),
              // 8.sbw,
              56.sbw
            ],
          ),
        ],
      ),
    );
  }

  _getTitle(String? title) {
    return Trext(
      txtData: title,
      txtColor: AppColors.blackColor,
      txtSize: 14.0,
      txtFont: AssetsPath.lato,
      txtWeight: FontWeight.w500,
      txtAlign: TextAlign.start,
    );
  }

  /// _getCustomCheckBox
  _getCustomCheckBox({
    String? itemName,
    Color? color,
    required Color borderColor,
    Widget? child,
    GestureTapCallback? onTap,
    double? width,
    double? height,
  }) {
    return SizedBox(
      width: SizeUtils.horizontalBlockSize * 18,
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: SizeUtils.horizontalBlockSize * 4.5,
              width: SizeUtils.horizontalBlockSize * 4.5,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: borderColor,
                  width: 1,
                ),
              ),
              child: child,
            ),
          ),
          SizedBox(width: SizeUtils.horizontalBlockSize * 1),
          Trext(
            txtData: '$itemName',
            txtColor: AppColors.blackColor,
            txtSize: 14.0,
            txtFont: AssetsPath.lato,
            txtWeight: FontWeight.w500,
            txtAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _getColorsBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getTitle('Colors'),
          8.sbh,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => InkWell(
                  onTap: () {
                    newDesignController.fileTeamLogo(name: "SecondImage");
                  },
                  child: newDesignController.secondImage.isNotEmpty
                      ? Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: AppColors.greyColor5,
                            border: const Border(
                              top: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                              bottom: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                              left: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                              right: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Image.file(
                            File(
                              newDesignController.secondImage.value,
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: AppColors.greyColor5,
                            border: const Border(
                              top: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                              bottom: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                              left: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                              right: BorderSide(
                                  width: .5, color: AppColors.greyColor),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Center(
                            child: Trext(
                              txtData: 'Upload \n Image',
                              txtColor: AppColors.greyColor,
                              txtSize: 12.0,
                              txtFont: AssetsPath.lato,
                              txtWeight: FontWeight.w500,
                              txtAlign: TextAlign.start,
                            ),
                          ),
                        ),
                ),
              ),
              16.sbw,
              InkWell(
                onTap: (() {}),
                child: Image(
                  image: AssetImage(GlobalImages.addIcon),
                  height: 24.0,
                  width: 24.0,
                ),
              ),
            ],
          ),
          8.sbh,
          Container(
            width: 80.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              border: Border(
                top: BorderSide(width: .5, color: AppColors.blackColor),
                bottom: BorderSide(width: .5, color: AppColors.blackColor),
                left: BorderSide(width: .5, color: AppColors.blackColor),
                right: BorderSide(width: .5, color: AppColors.blackColor),
              ),
            ),
            child: SizedBox(
              height: 30,
              child: TextFormField(
                controller: newDesignController.colorController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.transparent,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _getPriceTitle() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Trext(
            txtData: 'Prospected Price',
            txtColor: AppColors.blackColor,
            txtSize: 16.0,
            txtFont: AssetsPath.lato,
            txtWeight: FontWeight.w500,
            txtAlign: TextAlign.start,
          ),
          8.sbh,
          Container(
            height: 1.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.redColor1,
                AppColors.whiteColor,
              ],
            )),
          ),
          8.sbh,
        ],
      ),
    );
  }

  _getPriceBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(GlobalImages.rupeeIcon),
            height: 25,
            width: 25,
          ),
          12.sbw,
          Container(
            height: 30,
            width: 80.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              border: Border(
                top: BorderSide(width: .5, color: AppColors.blackColor),
                bottom: BorderSide(width: .5, color: AppColors.blackColor),
                left: BorderSide(width: .5, color: AppColors.blackColor),
                right: BorderSide(width: .5, color: AppColors.blackColor),
              ),
            ),
            child: TextFormField(
              controller: newDesignController.priceController,
              keyboardType: TextInputType.text,
              cursorColor: Colors.transparent,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.only(top: 10, left: 10, right: 10),
                focusColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          8.sbw,
          Trext(
            txtData: '/ Piece',
            txtColor: AppColors.blackColor,
            txtSize: 12.0,
            txtFont: AssetsPath.lato,
            txtWeight: FontWeight.w500,
            txtAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  _buildSubmit() {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              setState(() {});
              // newDesignController.sendNewDesign();
              // if (_formKey.currentState!.validate()) {
              //   Get.to(RegisterUserPage(
              //     addUser: 'Admin',
              //   ));
              // }
              Get.to(const DesignDetailsScreen());
            },
            child: Container(
              width: 256,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  color: AppColors.redColor1),
              child: const Text(
                'SUBMIT',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 12.0,
                  fontFamily: AssetsPath.lato,
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
