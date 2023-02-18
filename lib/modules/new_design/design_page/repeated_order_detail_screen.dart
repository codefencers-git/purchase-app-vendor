import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/new_design/design_page/design_details_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';

import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';
import 'package:purchase_vendor/widgets/appbar/appbarwithback.dart';

class RepeatedOrderDetailScreen extends StatefulWidget {
  @override
  State<RepeatedOrderDetailScreen> createState() => _RepeatedOrderDetailScreenState();
}

class _RepeatedOrderDetailScreenState extends State<RepeatedOrderDetailScreen> {
  bool tab1Selected = true;
  bool tab2Selected = true;
  bool tab3Selected = true;
  int valueS = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            _designImage(context),
            10.sbh,
            valueS == 0
                ? Trext(
                    txtData: "COMPLETED",
                    txtColor: AppColors.greenColor2,
                    txtSize: 14.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w500,
                    txtAlign: TextAlign.start,
                  )
                : valueS == 1
                    ? Trext(
                        txtData: 'COMPLETED',
                        txtColor: AppColors.greenColor2,
                        txtSize: 14.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w500,
                        txtAlign: TextAlign.start,
                      )
                    : valueS == 2
                        ? Trext(
                            txtData: "IN PROCESS",
                            txtColor: AppColors.greenColor2,
                            txtSize: 14.0,
                            txtFont: 'Lato-Regular',
                            txtWeight: FontWeight.w500,
                            txtAlign: TextAlign.start,
                          )
                        : SizedBox(),
            10.sbh,
            ButtonsTabBar(
              onTap: (value) {
                setState(() {
                  valueS = value;
                });
                print("valuevalue${value}");
              },
              // unselectedDecoration: BoxDecoration(
              //     color: AppColors.whiteColor,
              //     border: Border.all(
              //       color: AppColors.redColor1,
              //     )),

              unselectedBorderColor: AppColors.redColor1,
              backgroundColor: AppColors.redColor1,
              borderColor: AppColors.redColor1,
              borderWidth: 1,
              unselectedBackgroundColor: AppColors.whiteColor,
              contentPadding: EdgeInsets.symmetric(horizontal: 5),
              height: 32,
              labelStyle: TextStyle(fontSize: 11, color: AppColors.whiteColor),
              unselectedLabelStyle: TextStyle(fontSize: 11, color: AppColors.redColor),

              tabs: [
                Tab(
                  text: "2022/08/1/5324/5W",
                ),
                Tab(
                  text: "2022/09/1/5324/5W",
                ),
                Tab(
                  text: "2022/10/1/5324/5W",
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  children: [
                    boxOne(),
                    boxTwo(),
                    boxThree(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  boxOne() {
    return Column(
      children: [
        10.sbh,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Trext(
                      txtData: 'Job Order No.:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' #GP985',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Style No.:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' SW 5300',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Merchandiser:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' sunny',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Category:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Sweat Shirt',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Gender:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Female',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Amount:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' INR 22,000',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Trext(
                      txtData: 'Brand:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Elomelo',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Dated:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 12/11/22',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Delivery:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 12/11/22',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'QTY:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 340',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Sizes:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' M,L,XL,2Xl',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Amount:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' INR 22,000',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        15.sbh,
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reviewedBoxFeedback(image: "assets/images/d2.png"),
                    index == 9 ? boxCompletedSample() : SizedBox(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  boxTwo() {
    return Column(
      children: [
        10.sbh,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Trext(
                      txtData: 'Job Order No.:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' #GP985',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Style No.:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' SW 5300',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Merchandiser:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' sunny',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Category:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Sweat Shirt',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Gender:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Female',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Amount:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' INR 22,000',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Trext(
                      txtData: 'Brand:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Elomelo',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Dated:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 12/11/22',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Delivery:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 12/11/22',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'QTY:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 340',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Sizes:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' M,L,XL,2Xl',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Amount:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' INR 22,000',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        15.sbh,
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reviewedBoxFeedback(image: "assets/images/d5.png"),
                    index == 9 ? boxCompletedSample() : SizedBox(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  boxCompletedSample() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9),
            decoration: BoxDecoration(
              color: AppColors.redColor1,
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border(
                top: BorderSide(width: .5, color: AppColors.redColor1),
                bottom: BorderSide(width: .5, color: AppColors.redColor1),
                left: BorderSide(width: .5, color: AppColors.redColor1),
                right: BorderSide(width: .5, color: AppColors.redColor1),
              ),
            ),
            child: Trext(
              txtData: 'Sample History',
              txtColor: AppColors.whiteColor,
              txtSize: 12.0,
              txtFont: 'Lato-Regular',
              txtWeight: FontWeight.w500,
              txtAlign: TextAlign.center,
            ),
          ),
          10.sbh,
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
              txtData: 'Completed',
              txtColor: AppColors.whiteColor,
              txtSize: 12.0,
              txtFont: 'Lato-Regular',
              txtWeight: FontWeight.w500,
              txtAlign: TextAlign.center,
            ),
          ),
          10.sbh,
          Trext(
            txtData: 'Rate and Review',
            txtColor: AppColors.blackColor,
            txtSize: 14.0,
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w600,
            txtAlign: TextAlign.start,
          ),
          7.sbh,
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
          1.sbh,
          5.sbh,
          Trext(
            txtData: '3.8',
            txtColor: AppColors.redColor1,
            txtSize: 32.0,
            txtFont: 'Lato-Regular',
            txtWeight: FontWeight.w600,
            txtAlign: TextAlign.start,
          ),
          5.sbh,
          Row(
            children: [
              Trext(
                txtData: 'Stitching Quality',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w600,
                txtAlign: TextAlign.start,
              ),
              5.sbw,
              Icon(
                Icons.star,
                color: AppColors.redColor1,
              ),
              1.sbw,
              Icon(
                Icons.star,
                color: AppColors.redColor1,
              ),
              1.sbw,
              Icon(
                Icons.star,
                color: AppColors.redColor1,
              ),
              1.sbw,
              Icon(
                Icons.star,
                color: AppColors.redColor1,
              ),
              1.sbw,
              Icon(
                Icons.star_half,
                color: AppColors.redColor1,
              ),
              1.sbw,
              Icon(
                Icons.star_border,
                color: AppColors.redColor1,
              ),
              1.sbw,
            ],
          ),
          5.sbh
        ],
      ),
    );
  }

  boxThree() {
    return Column(
      children: [
        10.sbh,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Trext(
                      txtData: 'Job Order No.:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' #GP985',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Style No.:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' SW 5300',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Merchandiser:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' sunny',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Category:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Sweat Shirt',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Gender:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Female',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Amount:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' INR 22,000',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Trext(
                      txtData: 'Brand:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' Elomelo',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Dated:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 12/11/22',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Delivery:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 12/11/22',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'QTY:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' 340',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Sizes:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' M,L,XL,2Xl',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
                5.sbh,
                Row(
                  children: [
                    Trext(
                      txtData: 'Amount:',
                      txtColor: AppColors.greyColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                    Trext(
                      txtData: ' INR 22,000',
                      txtColor: AppColors.blackColor,
                      txtSize: 12.0,
                      txtFont: 'Lato-Regular',
                      txtWeight: FontWeight.w500,
                      txtAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        15.sbh,
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reviewedBoxFeedback(image: "assets/images/d4.png"),
                    index == 9 ? boxInProcessSample() : SizedBox(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  boxInProcessSample() {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 9),
            decoration: BoxDecoration(
              color: AppColors.redColor1,
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border(
                top: BorderSide(width: .5, color: AppColors.redColor1),
                bottom: BorderSide(width: .5, color: AppColors.redColor1),
                left: BorderSide(width: .5, color: AppColors.redColor1),
                right: BorderSide(width: .5, color: AppColors.redColor1),
              ),
            ),
            child: Trext(
              txtData: 'Sample History',
              txtColor: AppColors.whiteColor,
              txtSize: 12.0,
              txtFont: 'Lato-Regular',
              txtWeight: FontWeight.w500,
              txtAlign: TextAlign.center,
            ),
          ),
          10.sbh,
        ],
      ),
    );
  }

  Widget reviewedBoxFeedback({String? image}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 82,
          width: 82,
          child: Image.asset(
            "$image",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trext(
                txtData: 'SW 3000 RED',
                txtColor: AppColors.greyColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'RED',
                txtColor: AppColors.greyColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'M:22 L:22 XL:22 @XL:22',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
              4.sbh,
              Trext(
                txtData: 'QTY: 88',
                txtColor: AppColors.blackColor,
                txtSize: 14.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _getAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(65.0),
      child: AppbarWithBackButton(
        appbarTitle: "Repeated Order Detail",
        isShowSecond: true,
        onbackPress: () {
          Navigator.pop(context);
        },
        onHomePress: () {
          Get.to(DesignDetailsScreen());
        },
      ),
    );
  }

  _designImage(context) {
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
}
