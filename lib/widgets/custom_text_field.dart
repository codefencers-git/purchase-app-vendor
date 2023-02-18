import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/styles.dart';

class CustomTextField extends StatefulWidget {
  final double? height;
  final double? width;
  final Color fillColor;
  final Color? borderColor;
  final double? borderRadius;
  final Color? focusedBorderColor;
  final String? hint;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscure;
  final bool enable;
  final int? maxLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final bool? filled;
  final EdgeInsetsGeometry? contentPadding;
  final VoidCallback? onTap;
  final bool? readOnly;
  final String? errorText;
  final Function(String)? onChange;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? textInputFormatter;
  final FormFieldValidator<String>? validator;

  const CustomTextField(
      {Key? key,
      this.textInputFormatter,
      this.width,
      this.suffixIcon,
      this.focusNode,
      this.hint,
      this.leadingIcon,
      this.trailingIcon,
      this.controller,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obscure = false,
      this.enable = true,
      this.readOnly = false,
      this.maxLines,
      this.height,
      this.hintStyle,
      this.textStyle,
      this.filled,
      this.contentPadding,
      this.onTap,
      this.maxLength,
      this.borderRadius = 12,
      this.errorText = '',
      this.fillColor = Colors.transparent,
      this.focusedBorderColor = Colors.transparent,
      this.borderColor = Colors.transparent,
      this.onChange})
      : super(key: key);

  @override
  _AuthInputFieldState createState() => _AuthInputFieldState();
}

class _AuthInputFieldState extends State<CustomTextField> {
  late bool obscure;

  @override
  void initState() {
    super.initState();
    obscure = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height != null
          ? widget.height! > 10
              ? widget.height
              : 10
          : null,
      width: widget.width,
      //--- height can not be less than 20 otherwise we have to make the text font size too small
      child: TextFormField(
        cursorColor: AppColors.black,
        validator: widget.validator,
        inputFormatters: widget.textInputFormatter,
        onTap: widget.onTap,
        onChanged: widget.onChange,
        maxLength: widget.maxLength,
        readOnly: widget.readOnly!,
        focusNode: widget.focusNode,
        maxLines: obscure == true ? 1 : widget.maxLines,
        enabled: widget.enable,
        controller: widget.controller,
        textAlign: TextAlign.start,
        style: widget.textStyle ?? AppTextStyle.bodySemiBold[18]?.copyWith(color: AppColors.grey[80]),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscure ? obscure : widget.obscure,
        // obscure for password fields
        textAlignVertical: TextAlignVertical.center,
        obscuringCharacter: '*',
        // expands: true,
        decoration: InputDecoration(
          counterText: "",
          // isCollapsed: true,
          // isDense: true,
          errorText: widget.errorText != '' ? widget.errorText : null,
          errorStyle: AppTextStyle.bodyRegular[12]?.copyWith(
            color: AppColors.redColor,
          ),
          errorMaxLines: 2,
          contentPadding: widget.contentPadding,
          hintText: widget.hint,
          alignLabelWithHint: true,
          hintStyle: widget.hintStyle ?? AppTextStyle.bodySemiBold[18]?.copyWith(color: AppColors.grey[80]),
          fillColor: widget.fillColor,
          filled: widget.filled ?? true,
          border: borderDecoration(borderColor: widget.borderColor),
          disabledBorder: disabledBorderDecoration(borderColor: widget.borderColor),
          enabledBorder: enabledBorderDecoration(borderColor: widget.borderColor),
          focusedBorder: focusedBorderDecoration(focusedBorderColor: widget.focusedBorderColor),
          errorBorder: errorBorderDecoration(borderColor: widget.borderColor),
          prefixIconConstraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.width * 0.5,
            maxWidth: MediaQuery.of(context).size.width * 0.5,
          ),

          prefixIcon: widget.leadingIcon != null
              ? Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: widget.leadingIcon,
                )
              : null,
          suffixIcon: widget.obscure == false && widget.trailingIcon == null
              ? null
              : widget.trailingIcon ??
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    child: Icon(
                      obscure ? Icons.visibility_off : Icons.visibility,
                      color: IconTheme.of(context).color,
                    ),
                  ),
        ),
      ),
    );
  }

  OutlineInputBorder borderDecoration({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
      borderSide: BorderSide(width: 1.0, color: borderColor ?? AppColors.grey[80]!),
    );
  }

  OutlineInputBorder disabledBorderDecoration({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
      borderSide: BorderSide(width: 1.0, color: borderColor ?? AppColors.grey[80]!),
    );
  }

  OutlineInputBorder enabledBorderDecoration({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
      borderSide: BorderSide(width: 1.0, color: borderColor ?? AppColors.grey[80]!),
    );
  }

  OutlineInputBorder focusedBorderDecoration({Color? focusedBorderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
      borderSide: BorderSide(width: 1.0, color: focusedBorderColor ?? AppColors.grey[80]!),
    );
  }

  OutlineInputBorder errorBorderDecoration({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 12),
      borderSide: BorderSide(width: 1.0, color: borderColor ?? AppColors.grey[80]!),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {Key? key,
      required this.textController,
      required this.isReadOnly,
      required this.isObscureText,
      this.keyboardType = TextInputType.text,
      this.validator,
      this.hintText,
      this.maxLenght,
      this.inputFormatters,
      this.fontsize,
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
  final List<TextInputFormatter>?  inputFormatters;

  final Color? color;

  final VoidCallback? onTapFunction;
  final Color? hintColor;
  double? fontsize = 18;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(7)),
      child: TextFormField(
        controller: textController,
        readOnly: isReadOnly,
        obscureText: isObscureText,
        keyboardType: keyboardType,
        validator: validator,
        maxLength: maxLenght,
        inputFormatters: inputFormatters,
        cursorColor: AppColors.redColor1,
        onTap: onTapFunction,
        style: TextStyle(color: AppColors.blackColor1, fontSize: fontsize, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
          counterText: "",
          helperStyle: const TextStyle(fontSize: 1.0),
          isDense: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(5.0),
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintColor,
              fontSize: fontsize,
              fontFamily: 'assets/fonts/Lato-Regular.ttf',
              fontWeight: FontWeight.w400),
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
