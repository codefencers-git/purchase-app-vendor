import 'dart:async';
import 'package:purchase_vendor/helper/toast_helper.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/forgot_password/model/forgot_password_model.dart';
import 'package:purchase_vendor/modules/auth/forgot_password/service/service_screen.dart';

import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class ForgotPasswordController extends GetxController {
  Rx<SenOtpModel?> senOtpModel = SenOtpModel().obs;
  final TextEditingController emailOrPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isOtpLoading = false.obs;
  RxString otp = "".obs;

  Future<SenOtpModel?> sendOtp({
    required String username,
  }) async {
    try {
      isOtpLoading.value = true;

      final result = await ForgotPasswordService.sendOtp(
        username: username,
      );
      if (result["success"] == "1") {
        senOtpModel.value = SenOtpModel.fromJson(result);
        senOtpModel.refresh();
        Navigation.popAndPushNamed(Routes.otpVerificationScreen);
        clearController();
      } else {
        showToast.toastMessage("${result["message"]}");
      }
    } catch (e, st) {
      isOtpLoading.value = false;

      print("e:- $e st:- $st");
    } finally {
      isOtpLoading.value = false;
    }
    return null;
  }

  clearController() {
    emailOrPhoneController.clear();
    passwordController.clear();
  }
}
