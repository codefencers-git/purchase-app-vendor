import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/new_design/model/new_design_model.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';
import 'package:purchase_vendor/modules/new_design/service/new_design_service_screen.dart';

class NewDesignController extends GetxController {
  final TextEditingController fabricController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController designerController = TextEditingController();
  final TextEditingController lotNoController = TextEditingController();
  final TextEditingController styleNoController = TextEditingController();

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
