import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:purchase_vendor/modules/auth/set_new_password/set_new_password_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/strings_utils.dart';
import 'package:purchase_vendor/widgets/round_button.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  int timerValue = 30;

  @override
  void dispose() {
    // TODO: implement dispose
    errorController?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.redColor1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'key_otp_first_discription'.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'key_discrption3_name'.tr,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: height / 5,
                ),
                Text(
                  'key_enter_otp'.tr,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: AppColors.whiteColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'We have sent an OTP on \n +91 9999805331',
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: 20,
                ),
                _buildOtpTextBox(),
                _buildResend(),
                SizedBox(
                  height: 20,
                ),
                _buildLoginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResend() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Resend in 00:${timerValue}.",
          style: TextStyle(
            fontSize: 12,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }

  Widget _buildOtpTextBox() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: PinCodeTextField(
          appContext: context,
          pastedTextStyle: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
          ),
          length: 4,
          blinkWhenObscuring: true,
          animationType: AnimationType.fade,
          validator: (v) {
            if (v!.length < 6) {
              return StringsUtils.pleasEenterVaildOTP;
            } else {
              return null;
            }
          },
          errorTextSpace: 20,
          textStyle: const TextStyle(fontSize: 20, color: AppColors.blackColor, fontWeight: FontWeight.w700),
          pinTheme: PinTheme(
            fieldOuterPadding: EdgeInsets.zero,
            fieldHeight: 43,
            fieldWidth: 43,
            shape: PinCodeFieldShape.box,
            selectedFillColor: AppColors.whiteColor,
            inactiveFillColor: AppColors.greyColor3,
            activeFillColor: AppColors.whiteColor,
            activeColor: Colors.transparent,
            inactiveColor: Colors.transparent,
            selectedColor: AppColors.blackColor.withOpacity(0.2),
          ),
          cursorColor: AppColors.blackColor,
          showCursor: true,
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          errorAnimationController: errorController,
          controller: _otpController,
          keyboardType: TextInputType.number,
          onCompleted: (v) {
            print("Completed");
          },
          onChanged: (value) {},
          beforeTextPaste: (text) {
            print("Allowing to paste $text");
            return true;
          },
        ),
      ),
    );
  }

  RoundButton _buildLoginButton() {
    return RoundButton(
      buttonLabel: 'key_submit'.tr,
      onTap: () {
        Get.to(const NewPasswordScreen());
      },
      borderColor: AppColors.greyColor0,
      color: AppColors.redColor1,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: 'Lato',
    );
  }
}
