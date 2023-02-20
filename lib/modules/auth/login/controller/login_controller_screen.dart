import 'dart:async';
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/login/model/login_model.dart';
import 'package:purchase_vendor/modules/auth/login/service/service_screen.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class LoginController extends GetxController {


  Rx<LoginModel?> loginDetailsModel = LoginModel().obs;
  final TextEditingController emailOrPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxString jwt = "".obs;
  RxBool isLoginLoading = false.obs;

  Future<LoginModel?> loginOtp({
    required String username,
    required String password,
  }) async {
    try {
      isLoginLoading.value = true;

      final result = await LoginService.login(
        password: password,
        username: username,
      );
      if (result["success"] == "1") {
        loginDetailsModel.value = LoginModel.fromJson(result);
        loginDetailsModel.refresh();
        AppSharedPreference.setJwtToken(
            loginDetailsModel.value?.data?.token ?? "");
        Navigation.popAndPushNamed(Routes.dashBordScreen);
        clearLoginController();
      } else {
        showToast.toastMessage("${result["message"]}");
      }
    } catch (e, st) {
      isLoginLoading.value = false;

      print("e:- $e st:- $st");
    } finally {
      isLoginLoading.value = false;
    }
    return null;
  }

  clearLoginController() {
    emailOrPhoneController.clear();
    passwordController.clear();
  }
}
