import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';

class RoundButton extends StatelessWidget {
  final String buttonLabel;

  final VoidCallback onTap;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? fontcolor;
  final String fontFamily;
  final Color? color;
  final Color? borderColor;
  final bool isLoading;

  const RoundButton({
    Key? key,
    required this.buttonLabel,
    required this.onTap,
    this.fontSize = 18,
    this.borderColor,
    this.fontcolor,
    this.fontWeight = FontWeight.normal,
    this.fontFamily = AssetsPath.lato,
    this.isLoading = false,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isLoading != null && isLoading == false) {
          onTap();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        child: Container(
          // width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(color: borderColor ?? AppColors.blackColor3),
              color: color ?? AppColors.greyColor,
              borderRadius: BorderRadius.circular(7)),
          child: isLoading == true
              ? const Center(
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: AppColors.whiteColor,
                    ),
                  ),
                )
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      buttonLabel,
                      style: TextStyle(
                        fontSize: fontSize,
                        color: fontcolor ?? AppColors.whiteColor,
                        fontWeight: fontWeight,
                        fontFamily: fontFamily,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
