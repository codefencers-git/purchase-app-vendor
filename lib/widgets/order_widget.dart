// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

class OrderDetailsWidget extends StatefulWidget {
  String? img;
  String? itemName;
  String? itemColor;
  String? itemSize;
  String? itemQty;
  VoidCallback? onTapped;
  OrderDetailsWidget({
    super.key,
    required this.img,
    required this.itemName,
    required this.itemColor,
    required this.itemSize,
    required this.itemQty,
    required this.onTapped,
  });

  @override
  State<OrderDetailsWidget> createState() => _OrderDetailsWidgetState();
}

class _OrderDetailsWidgetState extends State<OrderDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: widget.onTapped,
                child: Image(
                  image: AssetImage(widget.img!),
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          8.sbw,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Trext(
                txtData: widget.itemName,
                txtColor: AppColors.blackColor,
                txtSize: 12.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w300,
                txtAlign: null,
              ),
              8.sbh,
              Trext(
                txtData: widget.itemColor,
                txtColor: AppColors.blackColor,
                txtSize: 12.0,
                txtFont: 'Lato-Regular',
                txtWeight: FontWeight.w300,
                txtAlign: null,
              ),
              8.sbh,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Trext(
                        txtData: 'M:',
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                      Trext(
                        txtData: widget.itemSize,
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                    ],
                  ),
                  4.sbw,
                  Row(
                    children: [
                      Trext(
                        txtData: 'L:',
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                      Trext(
                        txtData: widget.itemSize,
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                    ],
                  ),
                  4.sbw,
                  Row(
                    children: [
                      Trext(
                        txtData: 'XL:',
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                      Trext(
                        txtData: widget.itemSize,
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                    ],
                  ),
                  4.sbw,
                  Row(
                    children: [
                      Trext(
                        txtData: '2XL:',
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                      Trext(
                        txtData: widget.itemSize,
                        txtColor: AppColors.blackColor,
                        txtSize: 12.0,
                        txtFont: 'Lato-Regular',
                        txtWeight: FontWeight.w600,
                        txtAlign: null,
                      ),
                    ],
                  ),
                ],
              ),
              8.sbh,
              Row(
                children: [
                  Trext(
                    txtData: 'QTY:',
                    txtColor: AppColors.blackColor,
                    txtSize: 12.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w600,
                    txtAlign: null,
                  ),
                  4.sbw,
                  Trext(
                    txtData: widget.itemQty!,
                    txtColor: AppColors.blackColor,
                    txtSize: 12.0,
                    txtFont: 'Lato-Regular',
                    txtWeight: FontWeight.w600,
                    txtAlign: null,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
