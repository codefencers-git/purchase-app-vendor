// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

class DesignBoxItem extends StatefulWidget {
  String? img;
  String? itemName;
  String? itemCode;
  String? itemSize;
  String? itemQty;
  Color? itemColor;
  String? itemTitle;
  DesignBoxItem(
      {super.key,
      required this.img,
      required this.itemName,
      this.itemColor,
      required this.itemTitle,
      required this.itemCode,
      required this.itemSize,
      required this.itemQty});

  @override
  State<DesignBoxItem> createState() => _DesignBoxItemState();
}

class _DesignBoxItemState extends State<DesignBoxItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Stack(
        //   alignment: Alignment.bottomLeft,
        //   children: [
        //     Container(
        //         height: SizeUtils.horizontalBlockSize * 35,
        //         width: SizeUtils.horizontalBlockSize * 44,
        //         decoration: BoxDecoration(
        //             border: Border(
        //               top: BorderSide(width: .5, color: AppColors.greyColor),
        //               bottom: BorderSide(width: .5, color: AppColors.greyColor),
        //               left: BorderSide(width: .5, color: AppColors.greyColor),
        //               right: BorderSide(width: .5, color: AppColors.greyColor),
        //             ),
        //             borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        //         child: Image.asset(
        //           widget.img ?? "",
        //           // height: SizeUtils.horizontalBlockSize * 40,
        //           // width: SizeUtils.horizontalBlockSize * 44,
        //           // height: 140,
        //           // width: 180,
        //           fit: BoxFit.cover,
        //         )),
        //     // Container(
        //     //   decoration: BoxDecoration(
        //     //       color: widget.itemColor, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6))),
        //     //   height: 30,
        //     //   width: 30,
        //     // )
        //   ],
        // ),
        Container(
            height: SizeUtils.horizontalBlockSize * 44,
            width: SizeUtils.horizontalBlockSize * 44,
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: .5, color: AppColors.greyColor),
                  bottom: BorderSide(width: .5, color: AppColors.greyColor),
                  left: BorderSide(width: .5, color: AppColors.greyColor),
                  right: BorderSide(width: .5, color: AppColors.greyColor),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset(
              widget.img ?? "",
              // height: SizeUtils.horizontalBlockSize * 40,
              // width: SizeUtils.horizontalBlockSize * 44,
              // height: 140,
              // width: 180,
              fit: BoxFit.cover,
            )),
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
          txtColor: AppColors.blackColor,
          txtSize: 14.0,
          txtFont: AssetsPath.lato,
          txtWeight: FontWeight.w600,
          txtAlign: null,
        ),
        4.sbh,
        Row(
          children: [
            Trext(
              txtData: widget.itemTitle,
              txtColor: AppColors.blackColor,
              txtSize: 14.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w600,
              txtAlign: null,
            ),
            4.sbw,
            Trext(
              txtData: widget.itemQty!,
              txtColor: AppColors.blackColor,
              txtSize: 14.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w600,
              txtAlign: null,
            ),
          ],
        ),
        4.sbh,
      ],
    );
  }
}
