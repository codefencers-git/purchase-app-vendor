import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:purchase_vendor/modules/home_page/home_screen.dart';
import 'package:purchase_vendor/modules/new_design/design_page/design_details_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/checkbox_state.dart';
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
  int currentIndex = 0;

  final TextEditingController _fabricController =
      TextEditingController(text: 'Interlock, Piquet, Fleece');
  final TextEditingController _colorController = TextEditingController();
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
    return  Scaffold(
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
        appbarTitle: 'New Design'.toUpperCase(),
      ),
    );
  }

  _uploadDesignImage() {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(
          top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
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
                      border:
                          Border.all(width: 1.5, color: AppColors.redColor1)),
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
          // Image(
          //   image: AssetImage(GlobalImages.uploadImage,),
          //   height: 40,
          //   width: 40,
          // ),
          4.sbh,
          Trext(
            txtData: 'Upload Design Image',
            txtColor: AppColors.greyColor,
            txtSize: 12.0,
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w500,
            txtAlign: null,
          ),
        ],
      )),
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
                  txtFont: 'Lato-Regular',
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
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
                          padding: EdgeInsets.only(left: 12, top: 13),
                          child: Trext(
                            txtData: 'SW',
                            txtColor: AppColors.blackColor,
                            txtSize: 13.0,
                            txtFont: 'Lato-Regular',
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
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
                          padding: EdgeInsets.only(left: 10, top: 11),
                          child: Trext(
                            txtData: '56/222',
                            txtColor: AppColors.blackColor,
                            txtSize: 14.0,
                            txtFont: 'Lato-Regular',
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
                  txtFont: 'Lato-Regular',
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
                  txtFont: 'Lato-Regular',
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
                  txtFont: 'Lato-Regular',
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
                      bottom:
                          BorderSide(width: .5, color: AppColors.blackColor),
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
                      txtFont: 'Lato-Regular',
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
            width: SizeUtils.horizontalBlockSize * 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Trext(
                  txtData: 'Seasons',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
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
                  txtFont: 'Lato-Regular',
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
                      bottom:
                          BorderSide(width: .5, color: AppColors.blackColor),
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
                      txtFont: 'Lato-Regular',
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

//   _firstRow(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             flex: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Trext(
//                   txtData: 'Style No.',
//                   txtColor: AppColors.blackColor,
//                   txtSize: 12.0,
//                   txtFont: 'Lato-Regular',
//                   txtWeight: FontWeight.w500,
//                   txtAlign: TextAlign.start,
//                 ),
//                 8.sbh,
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         height: 40,
//                         child: TextFormField(
//                           controller: _swController,
//                           keyboardType: TextInputType.number,
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w600,
//                           ),
//                           decoration: InputDecoration(
//                             focusColor: Colors.white,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5.0),
//                             ),
//                             hintText: 'SW',
//                             hintStyle: TextStyle(
//                               color: AppColors.greyColor1,
//                               fontSize: 12.0,
//                               fontFamily: 'Lato-Regular',
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     2.sbw,
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         height: 40,
//                         child: TextFormField(
//                           cursorHeight: 15,
//                           controller: _styleController,
//                           keyboardType: TextInputType.text,
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w600,
//                           ),
//                           decoration: InputDecoration(
//                             focusColor: Colors.white,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           16.sbw,
//           Expanded(
//             flex: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Trext(
//                   txtData: 'Brands',
//                   txtColor: AppColors.blackColor,
//                   txtSize: 12.0,
//                   txtFont: 'Lato-Regular',
//                   txtWeight: FontWeight.w500,
//                   txtAlign: TextAlign.start,
//                 ),
//                 8.sbh,
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width / 2,
//                   child: Container(
//                     height: 40,
//                     child: _getDropDown(_getBrandItems()),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   _secondRow(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             flex: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Trext(
//                   txtData: 'Category',
//                   txtColor: AppColors.blackColor,
//                   txtSize: 12.0,
//                   txtFont: 'Lato-Regular',
//                   txtWeight: FontWeight.w500,
//                   txtAlign: TextAlign.start,
//                 ),
//                 8.sbh,
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 2.27,
//                       child: Container(height: 40, child: _getDropDown(_getBrandItems())),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           16.sbw,
//           Expanded(
//             flex: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Trext(
//                   txtData: 'Lot No.',
//                   txtColor: AppColors.blackColor,
//                   txtSize: 12.0,
//                   txtFont: 'Lato-Regular',
//                   txtWeight: FontWeight.w500,
//                   txtAlign: TextAlign.start,
//                 ),
//                 8.sbh,
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width / 2,
//                   child: Container(
//                     height: 40,
//                     child: TextFormField(
//                       controller: _lotController,
//                       keyboardType: TextInputType.text,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w600,
//                       ),
//                       decoration: InputDecoration(
//                         focusColor: Colors.white,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   _thirdRow(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(
//             width: width / 2.22,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Trext(
//                   txtData: 'Seasons',
//                   txtColor: AppColors.blackColor,
//                   txtSize: 12.0,
//                   txtFont: 'Lato-Regular',
//                   txtWeight: FontWeight.w500,
//                   txtAlign: TextAlign.start,
//                 ),
//                 8.sbh,
//                 // Container(
//                 //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//                 //   decoration: BoxDecoration(
//                 //     // color: AppColors.greenColor2,
//                 //     borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//                 //     border: Border(
//                 //       top: BorderSide(width: .5, color: AppColors.greyColor),
//                 //       bottom: BorderSide(width: .5, color: AppColors.greyColor),
//                 //       left: BorderSide(width: .5, color: AppColors.greyColor),
//                 //       right: BorderSide(width: .5, color: AppColors.greyColor),
//                 //     ),
//                 //   ),
//                 //   child: Trext(
//                 //     txtData:
//                 //     'Next. put the garment on a form which\nreflects your base sizeNext. put the \ngarment on a form which reflects your \nbase sizegarment on a form which reflects \nyour base size',
//                 //     txtColor: AppColors.blackColor,
//                 //     txtSize: 12.0,
//                 //     txtFont: 'Lato-Regular',
//                 //     txtLine: 6,
//                 //     txtWeight: FontWeight.w500,
//                 //     txtAlign: TextAlign.start,
//                 //   ),
//                 // ),
// /// screen hello
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: MediaQuery.of(context).size.width / 2.25,
//                       child: Container(height: 40, child: _getDropDown(_getBrandItems())),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           16.sbw,
//           SizedBox(
//             width: width / 2.32,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Trext(
//                   txtData: 'Designer',
//                   txtColor: AppColors.blackColor,
//                   txtSize: 12.0,
//                   txtFont: 'Lato-Regular',
//                   txtWeight: FontWeight.w500,
//                   txtAlign: TextAlign.start,
//                 ),
//                 8.sbh,
//                 // SizedBox(
//                 //   width: MediaQuery.of(context).size.width / 2,
//                 //   child: Container(
//                 //     height: 40,
//                 //     child: TextFormField(
//                 //       controller: _designerController,
//                 //       keyboardType: TextInputType.text,
//                 //       style: TextStyle(
//                 //         fontSize: 16,
//                 //         color: Colors.black,
//                 //         fontWeight: FontWeight.w600,
//                 //       ),
//                 //       decoration: InputDecoration(
//                 //         focusColor: Colors.white,
//                 //         border: OutlineInputBorder(
//                 //           borderRadius: BorderRadius.circular(5.0),
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

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
    return ['D&G', 'Gucci', 'Armani', 'Prada']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Trext(
          txtData: value,
          txtColor: AppColors.blackColor,
          txtSize: 12.0,
          txtFont: 'Lato-Regular',
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
            txtFont: 'Lato-Regular',
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
                      txtFont: 'Lato-Regular',
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
                      txtFont: 'Lato-Regular',
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
            txtFont: 'Lato-Regular',
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 22, horizontal: 10),
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

  _getTitle(String? title) {
    return Trext(
      txtData: title,
      txtColor: AppColors.blackColor,
      txtSize: 14.0,
      txtFont: 'Lato-Regular',
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
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w500,
            txtAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _getCheckBox(CheckBoxState checkBox) {
    return SizedBox(
        child: Row(
      children: [
        Checkbox(
          value: checkBox.value,
          onChanged: (value) {
            setState(() {
              checkBox.value = value!;
            });
          },
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        4.sbw,
        Trext(
          txtData: checkBox.title,
          txtColor: AppColors.blackColor,
          txtSize: 12.0,
          txtFont: 'Lato-Regular',
          txtWeight: FontWeight.w500,
          txtAlign: TextAlign.start,
        ),
      ],
    ));
  }

  _getColorsBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getTitle('Colors'),
          8.sbh,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 80,
                  width: 80,
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
                  child: Center(
                    child: Trext(
                      txtData: 'Upload \n Image',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
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
          SizedBox(
            width: 80.0,
            child: Container(
              height: 30,
              child: TextFormField(
                controller: _colorController,
                keyboardType: TextInputType.text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
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
            txtFont: 'Lato-Regular',
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
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
                txtFont: 'Lato-Regular',
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
            txtFont: 'Lato-Regular',
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
