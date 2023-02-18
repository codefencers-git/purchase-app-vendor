import 'dart:async';
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/login/model/login_model.dart';
import 'package:purchase_vendor/modules/auth/login/service/service_screen.dart';
import 'package:purchase_vendor/modules/dashbord_screen.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class OtpVerificationController extends GetxController {
  Rx<LoginModel?> loginDetailsModel = LoginModel().obs;
  final TextEditingController otpController = TextEditingController();
  RxString jwt = "".obs;
  RxBool isLoginOtpLoading = false.obs;

  Future<LoginModel?> loginOtp({
    required String username,
    required String password,
  }) async {
    try {
      isLoginOtpLoading.value = true;

      final result = await LoginService.login(
        password: password,
        username: username,
      );
      if (result["success"] == "1") {
        loginDetailsModel.value = LoginModel.fromJson(result);
        loginDetailsModel.refresh();

        Navigation.popAndPushNamed(Routes.dashBordScreen);
        clearController();
      } else {
        showToast.toastMessage("${result["message"]}");
      }
    } catch (e, st) {
      isLoginOtpLoading.value = false;

      print("e:- $e st:- $st");
    } finally {
      isLoginOtpLoading.value = false;
    }
    return null;
  }

  clearController() {
    otpController.clear();
  }
}
