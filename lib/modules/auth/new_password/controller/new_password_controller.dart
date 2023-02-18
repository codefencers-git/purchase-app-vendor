import 'dart:async';
import 'package:purchase_vendor/helper/toast_helper.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/new_password/model/new_password_model.dart';
import 'package:purchase_vendor/modules/auth/new_password/service/new_password_service_screen.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class NewPasswordController extends GetxController {
  Rx<NewPasswordModel?> newPasswordModel = NewPasswordModel().obs;
  final TextEditingController curController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController conPassController = TextEditingController();

  RxString jwt = "".obs;
  RxBool isNewPasswordLoading = false.obs;

  Future<NewPasswordModel?> newPassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      isNewPasswordLoading.value = true;

      final result = await NewPasswordService.newPassword(
        confirmPassword: confirmPassword,
        currentPassword: currentPassword,
        newPassword: newPassword,
      );
      if (result["success"] == "1") {
        newPasswordModel.value = NewPasswordModel.fromJson(result);
        newPasswordModel.refresh();

        Navigation.popAndPushNamed(Routes.dashBordScreen);
        clearController();
      } else {
        showToast.toastMessage("${result["message"]}");
      }
    } catch (e, st) {
      isNewPasswordLoading.value = false;

      print("e:- $e st:- $st");
    } finally {
      isNewPasswordLoading.value = false;
    }
    return null;
  }

  clearController() {
    passController.clear();
  }
}
