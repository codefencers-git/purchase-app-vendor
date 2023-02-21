// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

class DesignRepeatBoxItem extends StatefulWidget {
  String? img;
  String? itemName;
  String? itemCode;
  String? itemSize;
  String? itemQty;
  String? itemTitle;
  DesignRepeatBoxItem(
      {super.key,
      required this.img,
      required this.itemName,
      required this.itemTitle,
      required this.itemCode,
      required this.itemSize,
      required this.itemQty});

  @override
  State<DesignRepeatBoxItem> createState() => _DesignRepeatBoxItemState();
}

class _DesignRepeatBoxItemState extends State<DesignRepeatBoxItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          widget.img ?? "",
          height: 160,
          // width: 180,
          fit: BoxFit.cover,
        ),
        10.sbw,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            8.sbh,
            Trext(
              txtData: widget.itemCode,
              txtColor: AppColors.redColor1,
              txtSize: 15.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w500,
              txtAlign: null,
            ),
            4.sbh,
            Trext(
              txtData: widget.itemSize,
              txtColor: AppColors.greyColor4,
              txtSize: 14.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w400,
              txtAlign: null,
            ),
            4.sbh,
            Row(
              children: [
                Trext(
                  txtData: widget.itemTitle,
                  txtColor: AppColors.greyColor4,
                  txtSize: 14.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w400,
                  txtAlign: null,
                ),
                4.sbw,
                Trext(
                  txtData: widget.itemQty!,
                  txtColor: AppColors.greyColor4,
                  txtSize: 14.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w400,
                  txtAlign: null,
                ),
              ],
            ),
            7.sbh,
            Container(
              width: 150,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                border: Border(
                  top: BorderSide(width: .5, color: AppColors.redColor1),
                  bottom: BorderSide(width: .5, color: AppColors.redColor1),
                  left: BorderSide(width: .5, color: AppColors.redColor1),
                  right: BorderSide(width: .5, color: AppColors.redColor1),
                ),
              ),
              child: Center(
                child: Trext(
                  txtData: '22/2/2022/5234/W3',
                  txtColor: AppColors.redColor1,
                  txtSize: 14.0,
                  txtFont: AssetsPath.lato,
                  txtLine: 6,
                  txtWeight: FontWeight.w400,
                  txtAlign: TextAlign.center,
                ),
              ),
            ),
            7.sbh,
            Container(
              width: 150,
              height: 24,
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
              child: Center(
                child: Trext(
                  txtData: '26/2/2022/5234/W3',
                  txtColor: AppColors.whiteColor,
                  txtSize: 14.0,
                  txtFont: AssetsPath.lato,
                  txtLine: 6,
                  txtWeight: FontWeight.w400,
                  txtAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
