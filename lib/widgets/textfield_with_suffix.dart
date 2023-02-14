// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';

class TextFieldWithSuffixIcon extends StatelessWidget {
  TextFieldWithSuffixIcon(
      {Key? key,
      required this.textController,
      required this.isReadOnly,
      required this.isObscureText,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.hintText,
      required this.iconData,
      this.onIconTap,
      this.maxLenght,
      this.fontsize,
      this.onChange,
      this.onTapFunction,
      this.color = AppColors.whiteColor,
      this.hintColor = AppColors.greyColor6})
      : super(key: key);

  final TextEditingController textController;
  final bool isReadOnly;
  final bool isObscureText;
  TextInputType keyboardType;
  int? maxLenght;
  final String? Function(String?)? validator;
  final String? hintText;
  final String iconData;
  final Color? color;
  final VoidCallback? onIconTap;
  final VoidCallback? onChange;
  final VoidCallback? onTapFunction;
  final Color? hintColor;
  double? fontsize = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(7)),
      child: TextFormField(
        controller: textController,
        readOnly: isReadOnly,
        obscureText: isObscureText,
        keyboardType: keyboardType,
        validator: validator,
        maxLength: maxLenght,
        cursorColor: AppColors.greyColor,
        onTap: onTapFunction,
        onChanged: (value) {
          if (onChange != null) {
            onChange!();
          }
        },
        style: TextStyle(color: AppColors.blackColor1, fontSize: fontsize, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintColor,
              fontSize: fontsize,
              fontFamily: 'assets/fonts/Lato-Regular.ttf',
              fontWeight: FontWeight.w400),
          suffixIcon: InkWell(
            onTap: onIconTap,
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 10),
              child: Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(iconData),
                  ),
                ),
              ),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: AppColors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: AppColors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: AppColors.transparent,
              width: 1.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: AppColors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
