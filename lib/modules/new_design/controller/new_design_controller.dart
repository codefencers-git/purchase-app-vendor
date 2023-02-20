import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';
import 'package:purchase_vendor/modules/new_design/model/new_design_model.dart';
import 'package:purchase_vendor/modules/new_design/service/new_design_service_screen.dart';
import 'package:purchase_vendor/utils/navigation_utils/navigation.dart';
import 'package:purchase_vendor/utils/navigation_utils/routes.dart';

class NewDesignController extends GetxController {
  final TextEditingController fabricController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController designerController = TextEditingController();
  final TextEditingController lotNoController = TextEditingController();
  final TextEditingController styleNoController = TextEditingController();
  Rx<NewDesignPostModel?> newDesignPostModel = NewDesignPostModel().obs;

  RxString firstImage = ''.obs;
  RxString secondImage = ''.obs;

  String gender = '';
  RxString sTextButtonSelect = ''.obs;
  RxString mTextButtonSelect = ''.obs;
  RxString lTextButtonSelect = ''.obs;
  RxString xLTextButtonSelect = ''.obs;
  RxString twoXlTextButtonSelect = ''.obs;
  RxString threeXlTextButtonSelect = ''.obs;
  RxString fourXlTextButtonSelect = ''.obs;
  RxString fiveXlTextButtonSelect = ''.obs;
  RxString sizeXlTextButtonSelect = ''.obs;

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

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> fileTeamLogo({String? name}) async {
    try {
      var result = (await FilePicker.platform.pickFiles(
        allowMultiple: false, type: FileType.image,
        // allowedExtensions: ["PNG"],
      ));

      if (result != null) {
        if (name == "FirstImage") {
          firstImage.value = result.files.single.path.toString();
          update();
        } else if (name == "SecondImage") {
          secondImage.value = result.files.single.path.toString();
          update();
        }
      } else {
        log('No image selected.');
      }
    } catch (e) {
      log("error in filePick---->${e.toString()}");
    }
  }

  Future<NewDesignPostModel?> sendNewDesign({
    String? vendorId,
    String? styleNo,
    String? brandId,
    String? categoryId,
    String? lotNumber,
    String? seasonId,
    String? designers,
    String? gender,
    String? fabric,
    String? size,
    String? price,
    String? status,
    String? imageVariationListTitles2,
    String? image1,
  }) async {
    try {
      isNewDesignLoading.value = true;

      final result = await NewDesignScreenService.sendNewDesign(
        brandId: brandId,
        categoryId: categoryId,
        designers: designers,
        fabric: fabric,
        gender: gender,
        image1: image1,
        imageVariationListTitles2: imageVariationListTitles2,
        lotNumber: lotNumber,
        price: price,
        seasonId: seasonId,
        size: size,
        status: status,
        styleNo: styleNo,
        vendorId: vendorId,
      );
      if (result["success"] == "1") {
        showToast.toastMessage("${result["message"]}");

        newDesignPostModel.value = NewDesignPostModel.fromJson(result);
        showToast.toastMessage("${result["success"]}");
        Navigation.popAndPushNamed(Routes.dashBordScreen);

        clearController();
      } else {
        showToast.toastMessage("${result["message"]}");
      }
    } catch (e, st) {
      isNewDesignLoading.value = false;

      log("eresultresult:- $e st:- $st");
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
