// ignore_for_file: must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/utils/sized_box_utils.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

class DesignItemLive extends StatefulWidget {
  String? img;
  String? itemName;
  String? itemCode;
  String? itemSize;
  String? itemQty;
  String? itemTitle;

  DesignItemLive(
      {super.key,
      required this.img,
      required this.itemName,
      required this.itemTitle,
      required this.itemCode,
      required this.itemSize,
      required this.itemQty});

  @override
  State<DesignItemLive> createState() => _DesignItemLiveState();
}

class _DesignItemLiveState extends State<DesignItemLive> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: .5, color: AppColors.greyColor),
                bottom: BorderSide(width: .5, color: AppColors.greyColor),
                left: BorderSide(width: .5, color: AppColors.greyColor),
                right: BorderSide(width: .5, color: AppColors.greyColor),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5.0))),
          child: Image.network(
            widget.img ?? "",
            width: SizeUtils.horizontalBlockSize * 27,
            height: SizeUtils.horizontalBlockSize * 27,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: AppColors.greyColor7,
                alignment: Alignment.center,
                width: SizeUtils.horizontalBlockSize * 27,
                height: SizeUtils.horizontalBlockSize * 27,
                child: AppText(text: "not available!"),
              );
            },
          ),
        ),
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
        // Trext(
        //   txtData: widget.itemCode,
        //   txtColor: AppColors.blackColor,
        //   txtSize: 10.0,
        //   txtFont: AssetsPath.lato,
        //   txtWeight: FontWeight.w500,
        //   txtAlign: null,
        // ),
        // 4.sbh,
        Trext(
          txtData: widget.itemSize,
          txtColor: AppColors.blackColor.withOpacity(0.6),
          txtSize: 12.0,
          txtFont: AssetsPath.lato,
          txtWeight: FontWeight.w400,
          txtAlign: null,
        ),
        4.sbh,
        Row(
          children: [
            Trext(
              txtData: widget.itemTitle,
              txtColor: AppColors.blackColor.withOpacity(0.6),
              txtSize: 10.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w500,
              txtAlign: null,
            ),
            4.sbw,
            Trext(
              txtData: widget.itemQty!,
              txtColor: AppColors.blackColor.withOpacity(0.6),
              txtSize: 10.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w500,
              txtAlign: null,
            ),
          ],
        )
      ],
    );
  }
}




class DesignItem extends StatefulWidget {
  String? img;
  String? itemName;
  String? itemCode;
  String? itemSize;
  String? itemQty;
  String? itemTitle;

  DesignItem(
      {super.key,
        required this.img,
        required this.itemName,
        required this.itemTitle,
        required this.itemCode,
        required this.itemSize,
        required this.itemQty});

  @override
  State<DesignItem> createState() => _DesignItemState();
}

class _DesignItemState extends State<DesignItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: .5, color: AppColors.greyColor),
                bottom: BorderSide(width: .5, color: AppColors.greyColor),
                left: BorderSide(width: .5, color: AppColors.greyColor),
                right: BorderSide(width: .5, color: AppColors.greyColor),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5.0))),
          child: Image.asset(
            widget.img ?? "",
            width: SizeUtils.horizontalBlockSize * 27,
            height: SizeUtils.horizontalBlockSize * 27,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: AppColors.greyColor7,
                alignment: Alignment.center,
                width: SizeUtils.horizontalBlockSize * 27,
                height: SizeUtils.horizontalBlockSize * 27,
                child: AppText(text: "not available!"),
              );
            },
          ),
        ),
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
        // Trext(
        //   txtData: widget.itemCode,
        //   txtColor: AppColors.blackColor,
        //   txtSize: 10.0,
        //   txtFont: AssetsPath.lato,
        //   txtWeight: FontWeight.w500,
        //   txtAlign: null,
        // ),
        // 4.sbh,
        Trext(
          txtData: widget.itemSize,
          txtColor: AppColors.blackColor.withOpacity(0.6),
          txtSize: 12.0,
          txtFont: AssetsPath.lato,
          txtWeight: FontWeight.w400,
          txtAlign: null,
        ),
        4.sbh,
        Row(
          children: [
            Trext(
              txtData: widget.itemTitle,
              txtColor: AppColors.blackColor.withOpacity(0.6),
              txtSize: 10.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w500,
              txtAlign: null,
            ),
            4.sbw,
            Trext(
              txtData: widget.itemQty!,
              txtColor: AppColors.blackColor.withOpacity(0.6),
              txtSize: 10.0,
              txtFont: AssetsPath.lato,
              txtWeight: FontWeight.w500,
              txtAlign: null,
            ),
          ],
        )
      ],
    );
  }
}
