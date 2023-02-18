import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:purchase_vendor/modules/order_history/presentation/box_item_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbar_only_title.dart';
import 'package:purchase_vendor/widgets/drop_button.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  int currentIndex = 0;

  RxString seasonsDropDownValue = 'Sort By'.obs;
  RxList categoryDropDownList = ['Sort By', 'By Date'].obs;
  bool? sButtonSelect = true;
  bool mButtonSelect = true;
  bool lButtonSelect = true;
  bool xLButtonSelect = true;
  bool twoXlButtonSelect = true;
  bool threeXlButtonSelect = true;
  bool fourXlButtonSelect = true;
  bool fiveXlButtonSelect = true;
  bool sizeXlButtonSelect = true;
  RxList seasonsDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxList brandsDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxString categoryDropDownValue = ''.obs;
  RxString brandsDropDownValue = ''.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: Container(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: Column(
          children: [
            6.sbh,
            _getFirstRow(),
            20.sbh,
            _rowCheckBox(),
            20.sbh,
            _getSecondRow(),
          ],
        ),
      ),
    );
  }

  _rowCheckBox() {
    return Row(
      children: [
        _getCustomCheckBox(
            height: sButtonSelect == true ? 18 : 18,
            width: sButtonSelect == true ? 18 : 18,
            child: sButtonSelect == true
                ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                : SizedBox(),
            borderColor:
                sButtonSelect == true ? AppColors.yellowColor1 : Colors.grey,
            color:
                sButtonSelect == true ? AppColors.yellowColor1 : Colors.white,
            itemName: "In Process",
            onTap: () {
              setState(() {
                sButtonSelect = !sButtonSelect!;
              });
            }),
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
                mButtonSelect == true ? AppColors.greenColor : Colors.grey,
            color: mButtonSelect == true ? AppColors.greenColor : Colors.white,
            itemName: ""
                "completed",
            onTap: () {
              setState(() {
                mButtonSelect = !mButtonSelect!;
              });
            }),
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
                lButtonSelect == true ? AppColors.blueColor2 : Colors.grey,
            color: lButtonSelect == true ? AppColors.blueColor2 : Colors.white,
            itemName: "Repeated",
            onTap: () {
              setState(() {
                lButtonSelect = !lButtonSelect!;
              });
            }),
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
            borderColor:
                xLButtonSelect == true ? AppColors.maroonColor : Colors.grey,
            color:
                xLButtonSelect == true ? AppColors.maroonColor : Colors.white,
            itemName: "Cancelld",
            onTap: () {
              setState(() {
                xLButtonSelect = !xLButtonSelect!;
              });
            }),
        _getCustomCheckBox(
            height: threeXlButtonSelect == true ? 18 : 18,
            width: threeXlButtonSelect == true ? 18 : 18,
            child: threeXlButtonSelect == true
                ? Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                : SizedBox(),
            borderColor:
                threeXlButtonSelect == true ? AppColors.redColor1 : Colors.grey,
            color: threeXlButtonSelect == true
                ? AppColors.redColor1
                : Colors.white,
            itemName: "Disapprov",
            onTap: () {
              setState(() {
                threeXlButtonSelect = !threeXlButtonSelect!;
              });
            }),
      ],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: height,
              width: width,
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
          SizedBox(height: 4),
          Trext(
            txtData: '$itemName',
            txtColor: AppColors.blackColor,
            txtSize: 10.0,
            txtLine: 1,
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w400,
            txtAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }

  _getSecondRow() {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15
          ),
          itemBuilder: (BuildContext context, int index) {
            return DesignBoxItem(
                itemColor: AppColors.redColor1,
                img: "assets/images/d3.png",
                itemName: "BoutiquesAsia",
                itemCode: "#VC313456",
                itemSize: "M, L, XL, 2XL",
                itemQty: "128",
                itemTitle: "QTY: ");
          },
        ),
      ),
    );
    // return Expanded(
    //     child: SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       20.sbw,
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           DesignBoxItem(
    //               itemColor: AppColors.redColor1,
    //               img: "assets/images/d3.png",
    //               itemName: "BoutiquesAsia",
    //               itemCode: "#VC313456",
    //               itemSize: "M, L, XL, 2XL",
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //           DesignBoxItem(
    //             itemColor: AppColors.greenColor1,
    //             img: "assets/images/d2.png",
    //             itemName: "BoutiquesAsia",
    //             itemCode: "#VC43456",
    //             itemSize: "M, L, XL, 2XL",
    //             itemQty: "428",
    //             itemTitle: "QTY: ",
    //           ),
    //         ],
    //       ),
    //       13.sbh,
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           DesignBoxItem(
    //               itemColor: AppColors.yellowColor,
    //               img: "assets/images/d6.png",
    //               itemName: "BoutiquesAsia",
    //               itemCode: "#VC313456",
    //               itemSize: "M, L, XL, 2XL",
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //           DesignBoxItem(
    //               itemColor: AppColors.greenColor1,
    //               img: "assets/images/d3.png",
    //               itemName: "BoutiquesAsia",
    //               itemCode: "#VC313456",
    //               itemSize: "M, L, XL, 2XL",
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //         ],
    //       ),
    //       13.sbh,
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           DesignBoxItem(
    //               itemColor: AppColors.blackColor,
    //               img: "assets/images/d3.png",
    //               itemName: "BoutiquesAsia",
    //               itemCode: "#VC313456",
    //               itemSize: "M, L, XL, 2XL",
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //           DesignBoxItem(
    //               img: "assets/images/d3.png",
    //               itemName: "BoutiquesAsia",
    //               itemCode: "#VC313456",
    //               itemSize: "M, L, XL, 2XL",
    //               itemColor: AppColors.blueColor,
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //         ],
    //       ),
    //       13.sbh,
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           DesignBoxItem(
    //               img: "assets/images/d3.png",
    //               itemName: "BoutiquesAsia",
    //               itemCode: "#VC313456",
    //               itemColor: AppColors.greenColor1,
    //               itemSize: "M, L, XL, 2XL",
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //           DesignBoxItem(
    //               img: "assets/images/d3.png",
    //               itemName: "BoutiquesAsia",
    //               itemColor: AppColors.greenColor1,
    //               itemCode: "#VC313456",
    //               itemSize: "M, L, XL, 2XL",
    //               itemQty: "128",
    //               itemTitle: "QTY: "),
    //         ],
    //       ),
    //     ],
    //   ),
    // )
    //     // GridView.builder(
    //     //   itemCount: 10,
    //     //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     //       crossAxisCount: 2,
    //     //
    //     //   ),
    //     //   itemBuilder: (BuildContext context, int index){
    //     //     return  DesignItem(
    //     //         img: "assets/images/d3.png",
    //     //         itemName: "BoutiquesAsia",
    //     //         itemCode: "#VC313456",
    //     //         itemSize: "M, L, XL, 2XL",
    //     //         itemQty: "128",
    //     //         itemTitle: "QTY: ");
    //     //   },
    //     // ),
    //     );
  }

  _getImageBox({String? image}) {
    return Column(
      children: [
        Image.asset(
          "$image",
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppBarOnlyTitle(
        appbarTitle: 'Order History',
      ),
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
}
