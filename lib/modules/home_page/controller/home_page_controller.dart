import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/home_page/model/home_page_model.dart';
import 'package:purchase_vendor/modules/home_page/service/home_page_service_screen.dart';
import 'package:purchase_vendor/modules/new_design/model/new_design_model.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';
import 'package:purchase_vendor/modules/new_design/service/new_design_service_screen.dart';

class HomePageController extends GetxController {
  Rx<GetNewDesignPostModel?> getNewDesignPostModel =
      GetNewDesignPostModel().obs;

  RxBool isNewDesignLoading = false.obs;

  @override
  void onInit() async {
    super.onInit();
    sendNewDesign();
  }

  Future<GetNewDesignPostModel?> sendNewDesign() async {
    try {
      isNewDesignLoading.value = true;
      final result = await HomePageService.getNewDesign();
      if (result["success"] == "1") {
        getNewDesignPostModel.value = GetNewDesignPostModel.fromJson(result);
        print(
            "success getNewDesignPostModel:- ${getNewDesignPostModel.value?.toJson()}");
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
}
