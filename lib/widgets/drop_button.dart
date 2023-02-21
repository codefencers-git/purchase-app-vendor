import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
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
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: AppColors.whiteColor,
      border: Border(
        top: BorderSide(width: .5, color: AppColors.blackColor),
        bottom: BorderSide(width: .5, color: AppColors.blackColor),
        left: BorderSide(width: .5, color: AppColors.blackColor),
        right: BorderSide(width: .5, color: AppColors.blackColor),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 8, right: 4),
      child: Obx(
        () => DropdownButton(
            iconEnabledColor: AppColors.whiteColor,
            itemHeight: 50.0,
            onTap: () {
              print("valuevalue}:- ");
            },
            icon: const Padding(
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
            style: const TextStyle(
              fontSize: 11,
              color: AppColors.blackColor,
            ),
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

String? selectedValue;
List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];

Widget newDrop({
  context,
  ValueChanged<String?>? onChanged,
  RxList? dropDownList,
  RxString? dropDownValue,
}) {
  return Obx(
    () => Container(
      height: 6.7 * 6,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: AppColors.whiteColor,
        border: Border(
          top: BorderSide(width: .5, color: AppColors.blackColor),
          bottom: BorderSide(width: .5, color: AppColors.blackColor),
          left: BorderSide(width: .5, color: AppColors.blackColor),
          right: BorderSide(width: .5, color: AppColors.blackColor),
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          hint: (dropDownValue?.isEmpty ?? false)
              ? Trext(
                  txtData: "",
                  txtColor: AppColors.blackColor,
                  txtSize: 14.0,
                  txtFont: AssetsPath.lato,
                  txtWeight: FontWeight.w500,
                )
              : Padding(
                  padding: EdgeInsets.only(
                    left: SizeUtils.horizontalBlockSize * 2,
                  ),
                  child: Trext(
                    txtData: dropDownValue?.value,
                    txtColor: AppColors.blackColor,
                    txtSize: 14.0,
                    txtLine: 1,
                    overflow: TextOverflow.ellipsis,
                    txtFont: AssetsPath.lato,
                    txtWeight: FontWeight.w500,
                  ),
                ),
          items: dropDownList?.value
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: onChanged,
          buttonHeight: 40,
          buttonWidth: 140,
          itemHeight: 40,
        ),
      ),
    ),
  );
}
