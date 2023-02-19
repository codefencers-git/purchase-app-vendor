import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

Widget dropDown({
  required RxString dropDownValue,
  required RxList dropDownList,
  required ValueChanged onChanged,
  String type = "",
  String text = "",
  double? height,
  double? width,
  Color? borderColor,
  Color? textColor,
  Color? iconColor,
  double? selectedFontSize,
  double? hintFontSize,
  bool? isExpanded,
}) {
  return Container(
    height: height ?? 6.7 * 6,
    width: width ?? double.infinity,
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: AppColors.whiteColor,
        border:   Border(
        top: BorderSide(width: .5, color: AppColors.blackColor),
    bottom: BorderSide(width: .5, color: AppColors.blackColor),
    left: BorderSide(width: .5, color: AppColors.blackColor),
    right: BorderSide(width: .5, color: AppColors.blackColor),
  ),),
    child: Padding(
      padding: EdgeInsets.only(left: 8, right: 4),
      child: Obx(
        () => DropdownButton(
            iconEnabledColor: AppColors.whiteColor,
            itemHeight: 50.0,
            icon: Padding(
              padding: EdgeInsets.only(top: 0),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                color: AppColors.blackColor,
              ),
              // child: Image.asset(
              //   IconsAsset.downArrow,
              //   scale: 4.5,
              //   color: iconColor ?? AppColors.primaryColor,
              // ),
            ),
            dropdownColor: AppColors.whiteColor,
            underline: Container(),
            hint: dropDownValue.isEmpty
                ? Trext(
                    txtData: text,
                    txtColor: AppColors.blackColor,
                    txtSize: 14.0,
                    txtFont: AssetsPath.lato,
                    txtWeight: FontWeight.w500,
                  )
                // AppText(
                //       text: text,
                //       fontSize: hintFontSize ?? SizeUtils.fSize_14(),
                //       fontWeight: FontWeight.w400,
                //       color: textColor ?? AppColors.textColor,
                //     )
                : Trext(

                      txtData: dropDownValue.value,
                      txtColor: AppColors.blackColor,
                      txtSize: 14.0,
                      txtLine: 1,
                      overflow: TextOverflow.ellipsis,
                      txtFont: AssetsPath.lato,
                      txtWeight: FontWeight.w500,
                    ),
            isExpanded: isExpanded ?? true,
            iconSize: 30.0,
            style: const TextStyle(fontSize: 11, color:AppColors.blackColor,),
            items: dropDownList.map(
              (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Trext(
                    txtData: val,
                    txtColor: AppColors.blackColor,
                    txtSize: 12.0,
                    txtFont: AssetsPath.lato,
                    txtWeight: FontWeight.w500,
                  )
                  // AppText(
                  //   text: val,
                  //   fontSize: SizeUtils.fSize_14(),
                  //   fontWeight: FontWeight.w400,
                  //   // color: AppColors.textColor[300],
                  // ),
                );
              },
            ).toList(),
            onChanged: onChanged),
      ),
    ),
  );
}
