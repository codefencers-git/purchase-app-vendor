import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/new_design/model/new_design_model.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';
import 'package:purchase_vendor/modules/new_design/service/new_design_service_screen.dart';

class NewDesignController extends GetxController {
  final TextEditingController fabricController =
      TextEditingController(text: 'Interlock, Piquet, Fleece');
  final TextEditingController colorController = TextEditingController();
  String gender = '';

  bool? sButtonSelect = false;
  bool mButtonSelect = false;
  bool lButtonSelect = false;
  bool xLButtonSelect = false;
  bool twoXlButtonSelect = false;
  bool threeXlButtonSelect = false;
  bool fourXlButtonSelect = false;
  bool fiveXlButtonSelect = false;
  bool sizeXlButtonSelect = false;
  RxList seasonsDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxList categoryDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxList brandsDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxString seasonsDropDownValue = ''.obs;
  RxString categoryDropDownValue = ''.obs;
  RxString brandsDropDownValue = ''.obs;
  RxBool isNewDesignLoading = false.obs;

  Future<NewDesignPostModel?> sendNewDesign() async {
    try {
      isNewDesignLoading.value = true;

      final result = await NewDesignScreenService.sendNewDesign();
      if (result["success"] == "1") {
        showToast.toastMessage("${result["message"]}");

        // senOtpModel.value = SenOtpModel.fromJson(result);
        // senOtpModel.refresh();
        // // Navigation.popAndPushNamed(Routes.otpVerificationScreen);
        clearController();
      } else {
        showToast.toastMessage("${result["message"]}");
      }
    } catch (e, st) {
      isNewDesignLoading.value = false;

      log("e:- $e st:- $st");
    } finally {
      isNewDesignLoading.value = false;
    }
    return null;
  }

  clearController() {
    fabricController.clear();
    colorController.clear();
  }
}
