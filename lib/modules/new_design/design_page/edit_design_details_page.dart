import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/dashbord_screen.dart';
import 'package:purchase_vendor/modules/home_page/home_screen.dart';
import 'package:purchase_vendor/modules/new_design/design_page/design_details_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';

import 'package:purchase_vendor/utils/checkbox_state.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbarwithback.dart';
import 'package:purchase_vendor/widgets/drop_button.dart';

class EditDesignDetailsScreen extends StatefulWidget {
  const EditDesignDetailsScreen({super.key});

  @override
  State<EditDesignDetailsScreen> createState() => _EditDesignDetailsScreenState();
}

class _EditDesignDetailsScreenState extends State<EditDesignDetailsScreen> {
  TextEditingController _fabricController = TextEditingController(text: 'Interlock, Piquet, Fleece');
  String gender = '';
  bool? sButtonSelect = false;
  bool mButtonSelect = false;
  bool lButtonSelect = false;
  bool xLButtonSelect = false;
  bool twoXlButtonSelect = false;
  bool threeXlButtonSelect = false;
  bool fourXlButtonSelect = false;
  bool fiveXlButtonSelect = false;
  bool sizeXlButtonSelect = false;

  RxList seasonsDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxList categoryDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxList brandsDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxString seasonsDropDownValue = ''.obs;
  RxString categoryDropDownValue = ''.obs;
  RxString brandsDropDownValue = ''.obs;
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
            16.sbh,
            _getDescriptionTitle(),
            16.sbh,
            _getFabricBox(),
            8.sbh,
            _getSizesBox(),
            8.sbh,
            _getColorTitle(),
            8.sbh,
            _getColorsRow(),
            24.sbh,
            _getPriceTitle(),
            8.sbh,
            _getPriceBox(),
            16.sbh,
            _buildSubmit(),
            8.sbh,
          ],
        ),
      )),
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppbarWithBackButton(
        appbarTitle: "Sample Detail",
        isShowSecond: true,
        onbackPress: () {
          Navigator.pop(context);
        },
        onHomePress: () {
          Navigation.popAndPushNamed(Routes.dashBordScreen);
          // Get.to(const DashBordScreen());
        },
      ),
    );
  }

  _uploadDesignImage() {
    var width = MediaQuery.of(context).size.width;
    return Container(
        height: 200,
        width: width,
        margin: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
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
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(3.0),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor.withOpacity(0.2),
                  BlendMode.srcOver,
                ),
                child: Image(
                  image: AssetImage(GlobalImages.s1),
                  height: 200.0,
                  width: width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(GlobalImages.uploadImage),
                      height: 40,
                      width: 40,
                    ),
                    4.sbh,
                    Trext(
                      txtData: 'Upload Design Image',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                      txtAlign: null,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
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
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                          border: Border(
                            top: BorderSide(width: .5, color: AppColors.blackColor),
                            bottom: BorderSide(width: .5, color: AppColors.blackColor),
                            left: BorderSide(width: .5, color: AppColors.blackColor),
                            right: BorderSide(width: .5, color: AppColors.blackColor),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 12, top: 13),
                          child: Trext(
                            txtData: 'SW',
                            txtColor: AppColors.blackColor,
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
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                          border: Border(
                            top: BorderSide(width: .5, color: AppColors.blackColor),
                            bottom: BorderSide(width: .5, color: AppColors.blackColor),
                            left: BorderSide(width: .5, color: AppColors.blackColor),
                            right: BorderSide(width: .5, color: AppColors.blackColor),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 11),
                          child: Trext(
                            txtData: '56/222',
                            txtColor: AppColors.blackColor,
                            txtSize: 14.0,
                            txtFont: AssetsPath.lato,
                            txtLine: 6,
                            txtWeight: FontWeight.w600,
                            txtAlign: TextAlign.start,
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
                    dropDownList: brandsDropDownList,
                    dropDownValue: brandsDropDownValue,
                    onChanged: (value) {
                      brandsDropDownValue.value = value.toString();
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
                  dropDownList: categoryDropDownList,
                  dropDownValue: categoryDropDownValue,
                  onChanged: (value) {
                    categoryDropDownValue.value = value.toString();
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    border: Border(
                      top: BorderSide(width: .5, color: AppColors.blackColor),
                      bottom: BorderSide(width: .5, color: AppColors.blackColor),
                      left: BorderSide(width: .5, color: AppColors.blackColor),
                      right: BorderSide(width: .5, color: AppColors.blackColor),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 11),
                    child: Trext(
                      txtData: '88222',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: AssetsPath.lato,
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
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
            width: width / 2.22,
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width / 2.25,
                //       child: Container(
                //           height: 40, child: _getDropDown(_getBrandItems())),
                //     ),
                //   ],
                // ),
                dropDown(
                  dropDownList: seasonsDropDownList,
                  dropDownValue: seasonsDropDownValue,
                  onChanged: (value) {
                    seasonsDropDownValue.value = value.toString();
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    border: Border(
                      top: BorderSide(width: .5, color: AppColors.blackColor),
                      bottom: BorderSide(width: .5, color: AppColors.blackColor),
                      left: BorderSide(width: .5, color: AppColors.blackColor),
                      right: BorderSide(width: .5, color: AppColors.blackColor),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 11),
                    child: Trext(
                      txtData: 'fsd222',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: AssetsPath.lato,
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
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

  _getDropDown(List<DropdownMenuItem<String>>? items) {
    //String dropdownValue = '';
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: DropdownButtonFormField<String>(
              isExpanded: true,
              decoration: InputDecoration(
                focusColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 16.0,
              value: null,
              items: items,
              onChanged: (String? newValue) {
                setState(() {
                  //dropdownValue = newValue!;
                });
              }),
        )
      ],
    );
  }

  _getBrandItems() {
    return ['D&G', 'Gucci', 'Armani', 'Prada'].map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Trext(
          txtData: value,
          txtColor: AppColors.blackColor,
          txtSize: 12.0,
          txtFont: AssetsPath.lato,
          txtWeight: FontWeight.w500,
          txtAlign: TextAlign.center,
        ),
      );
    }).toList();
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
                          horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: 'Female',
                      groupValue: gender,
                      onChanged: ((value) {
                        setState(() {
                          gender = value.toString();
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
                          horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: 'Male',
                      groupValue: gender,
                      onChanged: ((value) {
                        setState(() {
                          gender = value.toString();
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
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _getTitle('Fabric'),
          8.sbh,
          SizedBox(
            child: TextFormField(
              controller: _fabricController,
              readOnly: true,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              onChanged: (value) {
                setState(() {
                  _fabricController.text = value;
                });
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: AppColors.greyColor,
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
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getTitle('Size'),
          8.sbh,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _getCustomCheckBox(
                  height: sButtonSelect == true ? 18 : 18,
                  width: sButtonSelect == true ? 18 : 18,
                  child: sButtonSelect == true
                      ? const Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor:
                  sButtonSelect == true ? AppColors.redColor1 : Colors.grey,
                  color: sButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: 'S',
                  onTap: () {
                    setState(() {
                      sButtonSelect = !sButtonSelect!;
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: mButtonSelect == true ? 18 : 18,
                  width: mButtonSelect == true ? 18 : 18,
                  child: mButtonSelect == true
                      ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor:
                  mButtonSelect == true ? AppColors.redColor1 : Colors.grey,
                  color: mButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: 'M',
                  onTap: () {
                    setState(() {
                      mButtonSelect = !mButtonSelect!;
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: lButtonSelect == true ? 18 : 18,
                  width: lButtonSelect == true ? 18 : 18,
                  child: lButtonSelect == true
                      ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor:
                  lButtonSelect == true ? AppColors.redColor1 : Colors.grey,
                  color: lButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: 'L',
                  onTap: () {
                    setState(() {
                      lButtonSelect = !lButtonSelect!;
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: xLButtonSelect == true ? 18 : 18,
                  width: xLButtonSelect == true ? 18 : 18,
                  child: xLButtonSelect == true
                      ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor: xLButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.grey,
                  color: xLButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: 'XL',
                  onTap: () {
                    setState(() {
                      xLButtonSelect = !xLButtonSelect!;
                    });
                  }),
              // 6.sbw,
              _getCustomCheckBox(
                  height: twoXlButtonSelect == true ? 18 : 18,
                  width: twoXlButtonSelect == true ? 18 : 18,
                  child: twoXlButtonSelect == true
                      ? const Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor: twoXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.grey,
                  color: twoXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: '2XL',
                  onTap: () {
                    setState(() {
                      twoXlButtonSelect = !twoXlButtonSelect!;
                    });
                  }),

              // _getCheckBox(CheckBoxState(title: 'S')),
              // 8.sbw,
              // _getCheckBox(CheckBoxState(title: 'M', value: true)),
              // 8.sbw,
              // _getCheckBox(CheckBoxState(title: 'L', value: true)),
              // 8.sbw,
              // _getCheckBox(CheckBoxState(title: 'XL')),
              // 8.sbw,
              // _getCheckBox(CheckBoxState(title: '2XL')),
            ],
          ),
          8.sbh,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _getCustomCheckBox(
                  height: threeXlButtonSelect == true ? 18 : 18,
                  width: threeXlButtonSelect == true ? 18 : 18,
                  child: threeXlButtonSelect == true
                      ? const Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor: threeXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.grey,
                  color: threeXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: '3XL',
                  onTap: () {
                    setState(() {
                      threeXlButtonSelect = !threeXlButtonSelect!;
                    });
                  }),
              // 0.1.sbw,
              // SizedBox(width: 0),
              _getCustomCheckBox(
                  height: fourXlButtonSelect == true ? 18 : 18,
                  width: fourXlButtonSelect == true ? 18 : 18,
                  child: fourXlButtonSelect == true
                      ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor: fourXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.grey,
                  color: fourXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: '4XL',
                  onTap: () {
                    setState(() {
                      fourXlButtonSelect = !fourXlButtonSelect!;
                    });
                  }),
              // 8.sbw,
              _getCustomCheckBox(
                  height: fiveXlButtonSelect == true ? 18 : 18,
                  width: fiveXlButtonSelect == true ? 18 : 18,
                  child: fiveXlButtonSelect == true
                      ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor: fiveXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.grey,
                  color: fiveXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: '5XL',
                  onTap: () {
                    setState(() {
                      fiveXlButtonSelect = !fiveXlButtonSelect!;
                    });
                  }),
              // 8.sbw,
              _getCustomCheckBox(
                  height: sizeXlButtonSelect == true ? 18 : 18,
                  width: sizeXlButtonSelect == true ? 18 : 18,
                  child: sizeXlButtonSelect == true
                      ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                      : SizedBox(),
                  borderColor: sizeXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.grey,
                  color: sizeXlButtonSelect == true
                      ? AppColors.redColor1
                      : Colors.white,
                  itemName: '6XL',
                  onTap: () {
                    setState(() {
                      sizeXlButtonSelect = !sizeXlButtonSelect!;
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

  _getCheckBox(CheckBoxState checkBox) {
    return SizedBox(
        child: Row(
      children: [
        Checkbox(
          value: checkBox.value,
          onChanged: (newValue) {
            setState(() {
              checkBox.value = newValue!;
            });
          },
          visualDensity:
              const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        4.sbw,
        Trext(
          txtData: checkBox.title,
          txtColor: AppColors.blackColor,
          txtSize: 12.0,
          txtFont: AssetsPath.lato,
          txtWeight: FontWeight.w500,
          txtAlign: TextAlign.start,
        ),
      ],
    ));
  }

  _getColorTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getTitle('Colors'),
          8.sbh,
        ],
      ),
    );
  }

  _getColorsRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _getColorsData(GlobalImages.design1, 'Blue'),
          8.sbw,
          _getColorsData(GlobalImages.design2, 'Red'),
          8.sbw,
          _getColorsData(GlobalImages.design3, 'Black'),
          8.sbw,
          _getColorsData(GlobalImages.design4, 'Yellow'),
          8.sbw,
        ],
      ),
    );
  }

  _getColorsData(String image, String color) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 84.0,
            width: 83.7,
            decoration: BoxDecoration(
              color: AppColors.greyColor5,
              border: Border(
                top: BorderSide(width: .5, color: AppColors.greyColor),
                bottom: BorderSide(width: .5, color: AppColors.greyColor),
                left: BorderSide(width: .5, color: AppColors.greyColor),
                right: BorderSide(width: .5, color: AppColors.greyColor),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Center(child: Image(image: AssetImage(image))),
          ),
          8.sbh,
          Row(
            children: [
              Trext(
                txtData: color.toUpperCase(),
                txtColor: AppColors.blackColor,
                txtSize: 12.0,
                txtFont: AssetsPath.lato,
                txtWeight: FontWeight.w400,
                txtAlign: TextAlign.start,
              ),
              29.sbw,
              InkWell(
                onTap: (() {
                  setState(() {});
                }),
                child: Image(
                  image: AssetImage(GlobalImages.crossIcon),
                  height: 18.0,
                  width: 18.0,
                ),
              )
            ],
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
            width: 70,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border(
                top: BorderSide(width: .5, color: AppColors.blackColor),
                bottom: BorderSide(width: .5, color: AppColors.blackColor),
                left: BorderSide(width: .5, color: AppColors.blackColor),
                right: BorderSide(width: .5, color: AppColors.blackColor),
              ),
            ),
            child: Center(
              child: Trext(
                txtData: '125',
                txtColor: AppColors.blackColor,
                txtSize: 16.0,
                txtFont: AssetsPath.lato,
                txtLine: 6,
                txtWeight: FontWeight.w600,
                txtAlign: TextAlign.center,
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

              // if (_formKey.currentState!.validate()) {
              //   Get.to(RegisterUserPage(
              //     addUser: 'Admin',
              //   ));
              // }
              Get.to(DesignDetailsScreen());
            },
            child: Container(
              width: 150,
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration:
                  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(5.0)), color: AppColors.redColor1),
              child: Text(
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
