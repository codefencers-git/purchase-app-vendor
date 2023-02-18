import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final double? height;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final double? wordSpacing;
  final bool? softWrap;

  const AppText({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.softWrap,
    this.height,
    this.maxLines,
    this.overflow,
    this.letterSpacing,
    this.wordSpacing,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontFamily: fontFamily ?? AssetsPath.lato,
        color: color ?? AppColors.black,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontSize: fontSize,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      ),
    );
  }
}

class Trext extends StatefulWidget {
  String? txtData;
  Color txtColor;
  double txtSize;
  String? txtFont;
  FontWeight txtWeight;
  TextAlign? txtAlign;
  int? txtLine;
  TextOverflow? overflow;
  Trext({
    super.key,
    required this.txtData,
    required this.txtColor,
    required this.txtSize,
    required this.txtFont,
    required this.txtWeight,
    this.txtAlign,
    this.txtLine,
    this.overflow,
  });

  @override
  State<Trext> createState() => _TrextState();
}

class _TrextState extends State<Trext> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        widget.txtData!,
        style: TextStyle(
          color: widget.txtColor,
          fontFamily: widget.txtFont,
          fontSize: widget.txtSize,
          fontWeight: widget.txtWeight,
        ),
        maxLines: widget.txtLine,
        textAlign: widget.txtAlign,
        overflow: widget.overflow,
      ),
    );
  }
}
