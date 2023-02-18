import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:purchase_vendor/modules/auth/new_password/presentation/set_new_password_screen.dart';
import 'package:purchase_vendor/modules/auth/otp_verification/controller/otp_verification_controller_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';
import 'package:purchase_vendor/utils/strings_utils.dart';
import 'package:purchase_vendor/widgets/round_button.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  OtpVerificationController otpVerificationController = Get.find();

  final _formKey = GlobalKey<FormState>();
  StreamController<ErrorAnimationType>? errorController;
  int timerValue = 30;
  bool hasError = false;
  String currentText = "";

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

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
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "I don't design clothes. I design dreams",
                  textAlign: TextAlign.center,
                  style: TextStyle(
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
                  '- Ralph Lauren'.tr,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: height / 5,
                ),
                Text(
                  'Enter Otp'.tr,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AppColors.whiteColor),
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
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: AppColors.whiteColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildOtpTextBox(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: _buildResend(),
                ),
                const SizedBox(
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Resend in 00:${timerValue}.",
          style: const TextStyle(
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
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
          child: PinCodeTextField(
            appContext: context,
            pastedTextStyle: const TextStyle(
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold,
            ),
            animationType: AnimationType.fade,
            length: 4,
            blinkWhenObscuring: true,
            validator: (v) {
              if (v!.length < 4) {
                return StringsUtils.pleasEenterVaildOTP;
              } else {
                return null;
              }
            },
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
            controller: otpVerificationController.otpController,
            keyboardType: TextInputType.number,
            errorTextSpace: 20,
            textStyle: const TextStyle(
                fontSize: 20,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w700),
            boxShadows: const [
              BoxShadow(
                offset: Offset(0, 1),
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
            onCompleted: (v) {
              debugPrint("Completed");
            },
            onChanged: (value) {
              debugPrint(value);
              setState(() {
                currentText = value;
              });
            },
            beforeTextPaste: (text) {
              debugPrint("Allowing to paste $text");
              return true;
            },
          )),
    );

    // return Form(
    //   key: _formKey,
    //   child: Container(
    //     padding: const EdgeInsets.symmetric(
    //       horizontal: 40,
    //     ),
    //     child: PinCodeTextField(
    //       appContext: context,
    //       pastedTextStyle: const TextStyle(
    //         color: AppColors.blackColor,
    //         fontWeight: FontWeight.bold,
    //       ),
    //       length: 4,
    //       blinkWhenObscuring: true,
    //       animationType: AnimationType.fade,
    //       validator: (v) {
    //         if (v!.length < 4) {
    //           return StringsUtils.pleasEenterVaildOTP;
    //         } else {
    //           return null;
    //         }
    //       },
    //       errorTextSpace: 20,
    //       textStyle: const TextStyle(
    //           fontSize: 20,
    //           color: AppColors.blackColor,
    //           fontWeight: FontWeight.w700),
    //       pinTheme: PinTheme(
    //         fieldOuterPadding: EdgeInsets.zero,
    //         fieldHeight: 43,
    //         fieldWidth: 43,
    //         shape: PinCodeFieldShape.box,
    //         selectedFillColor: AppColors.whiteColor,
    //         inactiveFillColor: AppColors.greyColor3,
    //         activeFillColor: AppColors.whiteColor,
    //         activeColor: Colors.transparent,
    //         inactiveColor: Colors.transparent,
    //         selectedColor: AppColors.blackColor.withOpacity(0.2),
    //       ),
    //       cursorColor: AppColors.blackColor,
    //       showCursor: true,
    //       animationDuration: const Duration(milliseconds: 300),
    //       enableActiveFill: true,
    //       errorAnimationController: errorController,
    //       controller: otpVerificationController.otpController,
    //       keyboardType: TextInputType.number,
    //       onCompleted: (v) {
    //         print("Completed");
    //       },
    //       onChanged: (value) {
    //         debugPrint(value);
    //         setState(() {
    //           currentText = value;
    //         });
    //       },
    //       beforeTextPaste: (text) {
    //         print("Allowing to paste $text");
    //         return true;
    //       },
    //     ),
    //   ),
    // );
  }

  RoundButton _buildLoginButton() {
    return RoundButton(
      buttonLabel: 'Submit'.tr,
      onTap: () {
        _formKey.currentState!.validate();

        if (currentText.length == 4 ||
            currentText != otpVerificationController.otpController.text) {
          showToast.toastMessage("OTP Success");
          Navigation.popAndPushNamed(Routes.newPasswordScreen);

        } else {
          showToast.toastMessage("OTP Verified!");
        }

        // if (_formKey.currentState!.validate()) {
        //   Get.to(const NewPasswordScreen());
        // }
      },
      borderColor: AppColors.greyColor0,
      color: AppColors.redColor1,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: 'Lato',
    );
  }
}
