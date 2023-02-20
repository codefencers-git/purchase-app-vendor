// ignore_for_file: unused_field, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/home_page/controller/home_page_controller.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/homepage_appbar_2.dart';
import 'package:purchase_vendor/widgets/design_item.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  HomePageController homePageController = Get.find();

  bool showData = true;

  @override
  void initState() {
    // TODO: implement initState
    api();
    super.initState();
  }

  api() async {
    await homePageController.getNewDesign();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.redColor1,
      child: Scaffold(
        appBar: _getAppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 32.0, bottom: 8.0),
                  child: _getTitleLabels('Order in Process'),
                ),
                8.sbh,
                _buildOrderProcess(context),
                20.sbh,
                Container(
                  margin: EdgeInsets.only(top: 32.0, bottom: 8.0),
                  child: _getTitleLabels('New Designs'),
                ),
                8.sbh,
                _buildNewDesignSection(context),
                16.sbh,
                _getBusiness(),
                8.sbh,
                // showData == true ? _getCounters() : SizedBox(),
                showData == true
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Trext(
                                    txtData: '12',
                                    txtColor: AppColors.yellowColor1,
                                    txtFont: 'Lato-Light',
                                    txtSize: 45.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  2.sbh,
                                  Trext(
                                    txtData: 'IN PROCESS',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  Trext(
                                    txtData: 'INR 12,000',
                                    txtColor: AppColors.yellowColor1,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w500,
                                    txtAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Trext(
                                    txtData: '35',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 45.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  2.sbh,
                                  Trext(
                                    txtData: 'TOTAL ORDER',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  Trext(
                                    txtData: 'INR 42,000',
                                    txtColor: AppColors.greenColor2,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w500,
                                    txtAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Trext(
                                    txtData: '23',
                                    txtColor: AppColors.greenColor2,
                                    txtFont: 'Lato-Light',
                                    txtSize: 45.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  2.sbh,
                                  Trext(
                                    txtData: 'COMPLETED',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  Trext(
                                    txtData: 'INR 22,000',
                                    txtColor: AppColors.greenColor2,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w500,
                                    txtAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          8.sbh,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Trext(
                                    txtData: '13',
                                    txtColor: AppColors.blueColor2,
                                    txtFont: 'Lato-Light',
                                    txtSize: 45.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  2.sbh,
                                  Trext(
                                    txtData: '  REPEATED      ',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  Trext(
                                    txtData: 'INR 42,000',
                                    txtColor: AppColors.blueColor2,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w500,
                                    txtAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Trext(
                                    txtData: ' 00',
                                    txtColor: AppColors.maroonColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 45.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  2.sbh,
                                  Trext(
                                    txtData: 'CANCELLED ',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  Trext(
                                    txtData: 'INR 5,000',
                                    txtColor: AppColors.maroonColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w500,
                                    txtAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Trext(
                                    txtData: ' 01',
                                    txtColor: AppColors.redColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 45.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                  2.sbh,
                                  Trext(
                                    txtData: 'DISAPPROVED',
                                    txtColor: AppColors.blackColor,
                                    txtFont: 'Lato-Light',
                                    txtSize: 12.0,
                                    txtWeight: FontWeight.w300,
                                    txtAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          16.sbh,
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: HomePageAppBarFill(
        onMenuTap: () {
          // globalKeyForDrawer.currentState!.openDrawer();
        },
        isDelivered: true,
      ),
    );
  }

  _getTitleLabels(String title) {
    return Trext(
      txtData: title,
      txtColor: AppColors.blackColor,
      txtFont: AssetsPath.lato,
      txtSize: 15.0,
      txtWeight: FontWeight.w500,
      txtAlign: TextAlign.start,
    );
  }

  _buildOrderProcess(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DesignItem(
              img: GlobalImages.design1,
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
        ),
        20.sbw,
        Expanded(
          child: DesignItem(
              img: GlobalImages.design2,
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
        ),
        20.sbw,
        Expanded(
          child: DesignItem(
              img: GlobalImages.design3,
              itemName: "BoutiquesAsia",
              itemCode: "#VC313456",
              itemSize: "M, L, XL, 2XL",
              itemQty: "128",
              itemTitle: "QTY: "),
        ),
      ],
    );
  }

  _buildNewDesignSection(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            homePageController.getNewDesignPostModel.value?.data?.length ?? 0,
            (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: SizeUtils.horizontalBlockSize * 5,
                ),
                child: DesignItemLive(
                  img: "${homePageController.getNewDesignPostModel.value?.data?[index].image}",
                  itemName: "BoutiquesAsia",
                  itemCode: "${homePageController.getNewDesignPostModel.value?.data?[index].styleNo}",
                  itemSize: "",
                  itemQty: "",
                  itemTitle: "",
                ),
              );
            },
          ),
        ),
      ),
    );
    //   Row(
    //   children: [
    //     // Expanded(
    //       child: DesignItem(
    //           img: GlobalImages.design4,
    //           itemName: "BoutiquesAsia",
    //           itemCode: "#VC313456",
    //           itemSize: "",
    //           itemQty: "",
    //           itemTitle: ""),
    //     // ),
    //     // 20.sbw,
    //     // Expanded(
    //     //   child: DesignItem(
    //     //       img: GlobalImages.design5,
    //     //       itemName: "BoutiquesAsia",
    //     //       itemCode: "#VC313456",
    //     //       itemSize: "",
    //     //       itemQty: "",
    //     //       itemTitle: ""),
    //     // ),
    //     // 20.sbw,
    //     // Expanded(
    //     //   child: DesignItem(
    //     //       img: GlobalImages.design6,
    //     //       itemName: "BoutiquesAsia",
    //     //       itemCode: "#VC313456",
    //     //       itemSize: "",
    //     //       itemQty: "",
    //     //       itemTitle: ""),
    //     // ),
    //   ],
    // );
  }

  _getBusiness() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _getTitleLabels('Overall Business'),
        16.sbw,
        InkWell(
          onTap: (() {
            setState(() {
              showData = !showData;
            });
          }),
          child: Icon(
            showData == true ? Icons.remove_circle_outline_outlined : Icons.add_circle_outline_outlined,
            size: 25,
          ),
        ),
      ],
    );
  }

// _getCounters() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Trext(
//                 txtData: '12',
//                 txtColor: AppColors.yellowColor1,
//                 txtFont: 'Lato-Light',
//                 txtSize: 45.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               2.sbh,
//               Trext(
//                 txtData: 'IN PROCESS',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               Trext(
//                 txtData: 'INR 12,000',
//                 txtColor: AppColors.yellowColor1,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w500,
//                 txtAlign: TextAlign.start,
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Trext(
//                 txtData: '35',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 45.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               2.sbh,
//               Trext(
//                 txtData: 'TOTAL ORDER',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               Trext(
//                 txtData: 'INR 42,000',
//                 txtColor: AppColors.greenColor2,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w500,
//                 txtAlign: TextAlign.start,
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Trext(
//                 txtData: '23',
//                 txtColor: AppColors.greenColor2,
//                 txtFont: 'Lato-Light',
//                 txtSize: 45.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               2.sbh,
//               Trext(
//                 txtData: 'COMPLETED',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               Trext(
//                 txtData: 'INR 22,000',
//                 txtColor: AppColors.greenColor2,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w500,
//                 txtAlign: TextAlign.start,
//               ),
//             ],
//           ),
//
//         ],
//       ),
//       8.sbh,
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Column(
//             children: [
//               Trext(
//                 txtData: '13',
//                 txtColor: AppColors.blueColor2,
//                 txtFont: 'Lato-Light',
//                 txtSize: 45.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               2.sbh,
//               Trext(
//                 txtData: '  REPEATED      ',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               Trext(
//                 txtData: 'INR 42,000',
//                 txtColor: AppColors.blueColor2,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w500,
//                 txtAlign: TextAlign.start,
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Trext(
//                 txtData: ' 00',
//                 txtColor: AppColors.maroonColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 45.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               2.sbh,
//               Trext(
//                 txtData: 'CANCELLED ',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               Trext(
//                 txtData: 'INR 5,000',
//                 txtColor: AppColors.maroonColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w500,
//                 txtAlign: TextAlign.start,
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Trext(
//                 txtData: ' 01',
//                 txtColor: AppColors.redColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 45.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//               2.sbh,
//               Trext(
//                 txtData: 'DISAPPROVED',
//                 txtColor: AppColors.blackColor,
//                 txtFont: 'Lato-Light',
//                 txtSize: 12.0,
//                 txtWeight: FontWeight.w300,
//                 txtAlign: TextAlign.start,
//               ),
//             ],
//           ),
//         ],
//       ),
//       16.sbh,
//     ],
//   );
// }
}
