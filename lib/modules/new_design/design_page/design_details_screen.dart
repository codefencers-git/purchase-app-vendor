import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/home_page/home_screen.dart';
import 'package:purchase_vendor/modules/new_design/design_page/edit_design_details_page.dart';
import 'package:purchase_vendor/modules/new_design/design_page/repeated_order_detail_screen.dart';

import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/checkbox_state.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';

import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbarwithback.dart';

class DesignDetailsScreen extends StatefulWidget {
  const DesignDetailsScreen({super.key});

  @override
  State<DesignDetailsScreen> createState() => _DesignDetailsScreenState();
}

class _DesignDetailsScreenState extends State<DesignDetailsScreen> {
  bool tab1Selected = true;

  final TextEditingController _fabricController = TextEditingController(text: 'Interlock, Piquet, Fleece');
  bool? sButtonSelect = false;
  bool mButtonSelect = false;
  bool lButtonSelect = false;
  bool xLButtonSelect = false;
  bool twoXlButtonSelect = false;
  bool threeXlButtonSelect = false;
  bool fourXlButtonSelect = false;
  bool fiveXlButtonSelect = false;
  bool sizeXlButtonSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            _designImage(),
            16.sbh,
            tab1Selected ? _getTab1SelectedView() : _getTabSelectedView(),
            24.sbh,
            _getDesignStatus(),
            // tab1Selected ? _getDesignStatus() : _getTabDesignStatus(),
            8.sbh,
            _getUnderline(),
            16.sbh,
            tab1Selected ? _tabView1() : _tabView0(),
          ],
        ),
      ),
    );
  }

  _tabView0() {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              approvedBox(),
              20.sbh,
              commentBox(),
              20.sbh,
              commentAndReviewedBox(),
              20.sbh,
              reviewedBoxFeedback(),
            ],
          ),
        ),
      ),
    );
  }

  Widget approvedBox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 82,
          width: 82,
          child: Image.asset(
            "assets/images/d4.png",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trext(
                txtData: 'Reviewed on: 14/11/12',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'Feedback:',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              6.sbh,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9),
                decoration: BoxDecoration(
                  color: AppColors.greenColor2,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.greenColor2),
                    bottom: BorderSide(width: .5, color: AppColors.greenColor2),
                    left: BorderSide(width: .5, color: AppColors.greenColor2),
                    right: BorderSide(width: .5, color: AppColors.greenColor2),
                  ),
                ),
                child: Trext(
                  txtData: 'APPROVED',
                  txtColor: AppColors.whiteColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget commentBox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 82,
          width: 82,
          child: Image.asset(
            "assets/images/d4.png",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trext(
                txtData: 'Reviewed on: 14/11/12',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'Comment:',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              6.sbh,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  // color: AppColors.greenColor2,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.greyColor),
                    bottom: BorderSide(width: .5, color: AppColors.greyColor),
                    left: BorderSide(width: .5, color: AppColors.greyColor),
                    right: BorderSide(width: .5, color: AppColors.greyColor),
                  ),
                ),
                child: Trext(
                  txtData: 'I have done the button changes as per your\ndesire.',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget commentAndReviewedBox() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 82,
          width: 82,
          child: Image.asset(
            "assets/images/d4.png",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trext(
                txtData: 'Reviewed on: 14/11/12',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'Comment:',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              6.sbh,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  // color: AppColors.greenColor2,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.greyColor),
                    bottom: BorderSide(width: .5, color: AppColors.greyColor),
                    left: BorderSide(width: .5, color: AppColors.greyColor),
                    right: BorderSide(width: .5, color: AppColors.greyColor),
                  ),
                ),
                child: Trext(
                  txtData: 'I have done the button changes as per your\ndesire.',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
              ),
              6.sbh,
              Trext(
                txtData: 'Reviewed on: 14/11/12  | Rocky',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'Feedback:',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Container(
                height: 82,
                width: 82,
                child: Image.asset(
                  "assets/images/s1.png",
                ),
              ),
              8.sbh,
              Trext(
                txtData: 'Reviewed on: 14/11/12  | Rocky',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'Feedback:',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              6.sbh,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  // color: AppColors.greenColor2,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.greyColor),
                    bottom: BorderSide(width: .5, color: AppColors.greyColor),
                    left: BorderSide(width: .5, color: AppColors.greyColor),
                    right: BorderSide(width: .5, color: AppColors.greyColor),
                  ),
                ),
                child: Trext(
                  txtData: 'Next. put the garment on a form which\nreflects your base size',
                  txtColor: AppColors.greyColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget reviewedBoxFeedback() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 82,
          width: 82,
          child: Image.asset(
            "assets/images/s3.png",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trext(
                txtData: 'Reviewed on: 14/11/12',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'Feedback:',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              6.sbh,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  // color: AppColors.greenColor2,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.greyColor),
                    bottom: BorderSide(width: .5, color: AppColors.greyColor),
                    left: BorderSide(width: .5, color: AppColors.greyColor),
                    right: BorderSide(width: .5, color: AppColors.greyColor),
                  ),
                ),
                child: Trext(
                  txtData:
                      'Next. put the garment on a form which\nreflects your base sizeNext. put the \ngarment on a form which reflects your \nbase sizegarment on a form which reflects \nyour base size',
                  txtColor: AppColors.blackColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtLine: 6,
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
              ),
              20.sbh,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 9),
                decoration: BoxDecoration(
                  color: AppColors.redColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.redColor),
                    bottom: BorderSide(width: .5, color: AppColors.redColor),
                    left: BorderSide(width: .5, color: AppColors.redColor),
                    right: BorderSide(width: .5, color: AppColors.redColor),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to(RepeatedOrderDetailScreen());
                  },
                  child: Trext(
                    txtData: 'Order Detail',
                    txtColor: AppColors.whiteColor,
                    txtSize: 14.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w500,
                    txtAlign: TextAlign.center,
                  ),
                ),
              ),
              30.sbh,
            ],
          ),
        ),
      ],
    );
  }

  _tabView1() {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _firstRow(),
          8.sbh,
          _secondRow(),
          8.sbh,
          _thirdRow(),
          8.sbh,
          _genderRow(),
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
          _getLastEdited(),
          12.sbh,
        ],
      ),
    ));
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
          Get.to(HomePageScreen());
        },
      ),
    );
  }

  _designImage() {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 150,
      margin: const EdgeInsets.only(top: 24.0, left: 16.0, right: 16.0, bottom: 8.0),
      decoration: BoxDecoration(
        color: AppColors.greyColor5,
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(3.0),
        child: Image(
          image: AssetImage(GlobalImages.s1),
          fit: BoxFit.cover,
          height: 150,
        ),
      ),
    );
  }

  _getTab1SelectedView() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 150,
            child: InkWell(
              onTap: () {
                setState(() {
                  this.tab1Selected = !tab1Selected;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.redColor1),
                    bottom: BorderSide(width: .5, color: AppColors.redColor1),
                    left: BorderSide(width: .5, color: AppColors.redColor1),
                    right: BorderSide(width: .5, color: AppColors.redColor1),
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Trext(
                  txtData: 'Review History',
                  txtColor: AppColors.redColor1,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)), color: AppColors.redColor1),
                child: Trext(
                  txtData: 'Sample Description',
                  txtColor: AppColors.whiteColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _getTabSelectedView() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 150,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.redColor1),
                    bottom: BorderSide(width: .5, color: AppColors.redColor1),
                    left: BorderSide(width: .5, color: AppColors.redColor1),
                    right: BorderSide(width: .5, color: AppColors.redColor1),
                  ),
                  color: AppColors.redColor1,
                ),
                child: Trext(
                  txtData: 'Review History',
                  txtColor: AppColors.whiteColor,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            child: InkWell(
              onTap: () {
                setState(() {
                  this.tab1Selected = !tab1Selected;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                  border: Border(
                    top: BorderSide(width: .5, color: AppColors.redColor1),
                    bottom: BorderSide(width: .5, color: AppColors.redColor1),
                    left: BorderSide(width: .5, color: AppColors.redColor1),
                    right: BorderSide(width: .5, color: AppColors.redColor1),
                  ),
                ),
                child: Trext(
                  txtData: 'Sample Description',
                  txtColor: AppColors.redColor1,
                  txtSize: 12.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _getDesignStatus() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Trext(
                txtData: 'Style No.: ',
                txtColor: AppColors.blackColor,
                txtSize: 16.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w400,
                txtAlign: TextAlign.center,
              ),
              Trext(
                txtData: 'SW 5324 ',
                txtColor: AppColors.blackColor,
                txtSize: 16.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w800,
                txtAlign: TextAlign.center,
              ),
            ],
          ),
          4.sbh,
          Trext(
            txtData: 'IN REVIEW',
            txtColor: AppColors.yellowColor1,
            txtSize: 16.0,
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w600,
            txtAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _getUnderline() {
    return Container(
      height: 1,
      color: AppColors.redColor1,
    );
  }

  _firstRow() {
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
                  txtData: 'Style No.',
                  txtColor: AppColors.blackColor,
                  txtSize: 14.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 2,
                //   child: Container(
                //     height: 40,
                //     child: TextFormField(
                //       readOnly: true,
                //       controller: _styleController,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w600,
                //       ),
                //       onChanged: (value) {
                //         setState(() {
                //           _styleController.text = value;
                //         });
                //       },
                //       decoration: InputDecoration(
                //         focusColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
                      txtData: 'SW 5324',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
                    ),
                  ),
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
                  txtData: 'Brands',
                  txtColor: AppColors.blackColor,
                  txtSize: 14.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 2,
                //   child: Container(
                //     height: 40,
                //     child: TextFormField(
                //       initialValue: 'Elomelo',
                //       readOnly: true,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w600,
                //       ),
                //       onChanged: (value) {
                //         setState(() {});
                //       },
                //       decoration: InputDecoration(
                //         focusColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
                      txtData: 'Elomelo',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
                    ),
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
                  txtSize: 14.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 2,
                //   child: Container(
                //     height: 40,
                //     child: TextFormField(
                //       initialValue: 'Plazo',
                //       readOnly: true,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w600,
                //       ),
                //       onChanged: (value) {
                //         setState(() {});
                //       },
                //       decoration: InputDecoration(
                //         focusColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //   ),
                // )

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
                      txtData: 'Plazo',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
                    ),
                  ),
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
                  txtSize: 14.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 2,
                //   child: Container(
                //     height: 40,
                //     child: TextFormField(
                //       controller: _lotController,
                //       readOnly: true,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w600,
                //       ),
                //       onChanged: (value) {
                //         setState(() {
                //           _lotController.text = value;
                //         });
                //       },
                //       decoration: InputDecoration(
                //         focusColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
                      txtData: '2022/12/1/5324/SW',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
                    ),
                  ),
                ),
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
                  txtSize: 14.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 2,
                //   child: Container(
                //     height: 40,
                //     child: TextFormField(
                //       initialValue: 'Winter 2022',
                //       readOnly: true,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w600,
                //       ),
                //       onChanged: (value) {
                //         setState(() {});
                //       },
                //       decoration: InputDecoration(
                //         focusColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //   ),
                // )
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
                      txtData: 'Winter 2022',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
                    ),
                  ),
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
                  txtSize: 14.0,
                  txtFont: 'Lato-Regular',
                  txtWeight: FontWeight.w500,
                  txtAlign: TextAlign.start,
                ),
                8.sbh,
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 2,
                //   child: Container(
                //     height: 40,
                //     child: TextFormField(
                //       controller: _designerController,
                //       readOnly: true,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //         fontWeight: FontWeight.w600,
                //       ),
                //       onChanged: (value) {
                //         setState(() {
                //           _designerController.text = value;
                //         });
                //       },
                //       decoration: InputDecoration(
                //         focusColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
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
                      txtData: 'Nancy',
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w600,
                      txtAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _genderRow() {
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        height: 20,
                        width: 20,
                        color: AppColors.redColor1,
                      ),
                    ),
                  ],
                ),
              ),
              8.sbw,
              Trext(
                txtData: 'Female',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.start,
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

  _getCheckBox(CheckBoxState checkBox) {
    return SizedBox(
        child: Row(
      children: [
        Checkbox(
          checkColor: AppColors.redColor1,
          value: checkBox.value,
          onChanged: null,
          visualDensity:
              const VisualDensity(horizontal: VisualDensity.minimumDensity, vertical: VisualDensity.minimumDensity),
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
            height: 85.0,
            width: 85.0,
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
          Trext(
            txtData: color.toUpperCase(),
            txtColor: AppColors.blackColor,
            txtSize: 12.0,
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w300,
            txtAlign: TextAlign.start,
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
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              setState(() {});

              // if (_formKey.currentState!.validate()) {
              Get.to(EditDesignDetailsScreen());
              // }
              //Get.to(DesignDetailsScreen());
            },
            child: Container(
              width: 150,
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration:
                  BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(5.0)), color: AppColors.redColor1),
              child: Text(
                'EDIT',
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

  _getLastEdited() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Trext(
              txtData: 'Last Edited on: 15/12/2022 | Vendor',
              txtColor: AppColors.greyColor,
              txtSize: 10.0,
              txtFont: 'Lato-Light',
              txtWeight: FontWeight.w300,
              txtAlign: TextAlign.start,
            ),
          ),
        ),
      ],
    );
  }
}

// class _getTabDesignStatus {
// }
