import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/repeat_order/presentation/box_repeat_item_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbar_only_title.dart';
import 'package:purchase_vendor/widgets/drop_button.dart';

class RepeatOrderScreen extends StatefulWidget {
  const RepeatOrderScreen({super.key});

  @override
  State<RepeatOrderScreen> createState() => _RepeatOrderScreenState();
}

class _RepeatOrderScreenState extends State<RepeatOrderScreen> {
  int currentIndex = 0;
  RxString seasonsDropDownValue = 'Sort By'.obs;
  RxList categoryDropDownList = ['Sort By', 'By Date'].obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            5.sbh,
            _getFirstRow(),
            15.sbh,
            _getSecondRow(),
          ],
        ),
      ),
    );
  }

  _getSecondRow() {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(
        children: [
          DesignRepeatBoxItem(
              img: "assets/images/d6.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/d3.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/d2.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/d5.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/d3.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/s4.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/d3.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
          DesignRepeatBoxItem(
              img: "assets/images/s1.png",
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
          20.sbh,
        ],
      ),
    )
        // GridView.builder(
        //   itemCount: 10,
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //
        //   ),
        //   itemBuilder: (BuildContext context, int index){
        //     return  DesignItem(
        //         img: "assets/images/d3.png",
        //         itemName: "BoutiquesAsia",
        //         itemCode: "#VC313456",
        //         itemSize: "M, L, XL, 2XL",
        //         itemQty: "128",
        //         itemTitle: "QTY: ");
        //   },
        // ),
        );
  }

  _getFirstRow() {
    return SizedBox(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 40,
            child: dropDown(
              dropDownList: categoryDropDownList,
              dropDownValue: seasonsDropDownValue,
              onChanged: (value) {
                seasonsDropDownValue.value = value.toString();
              },
            ),
          ),
          10.sbw,
          Expanded(
            child: Container(
              // width: MediaQuery.of(context).size.width/4,
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
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Trext(
                      txtData: 'Search',
                      txtColor: AppColors.greyColor7,
                      txtSize: 14.0,
                      txtFont: 'Lato-Regular',
                      txtLine: 6,
                      txtWeight: FontWeight.w400,
                      txtAlign: TextAlign.start,
                    ),
                    Image.asset(
                      "assets/icons/ic_search.png",
                      height: 25,
                      width: 25,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppBarOnlyTitle(
        appbarTitle: 'Repeat Order',
      ),
    );
  }
}
