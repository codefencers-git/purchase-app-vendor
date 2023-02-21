import 'dart:developer';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/helper/toast_helper.dart';
import 'package:purchase_vendor/modules/home_page/controller/home_page_controller.dart';
import 'package:purchase_vendor/modules/new_design/model/new_design_model.dart';
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
  HomePageController homePageController = Get.find();
  RxString firstImage = ''.obs;
  RxString secondImage = ''.obs;
  RxBool errorTrue = false.obs;
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
  RxList seasonsDropDownList = [
    'D&G',
    'Gucci',
    'Armani',
    'Prada',
  ].obs;
  RxList categoryDropDownList = ['D&G', 'Gucci', 'Armani', 'Prada'].obs;
  RxList brandsDropDownList = [
    'D&G',
    'Gucci',
    'Armani',
    'Prada',
  ].obs;
  RxString seasonsDropDownValue = ''.obs;
  RxString categoryDropDownValue = ''.obs;
  RxString brandsDropDownValue = ''.obs;
  RxBool isNewDesignLoading = false.obs;
  RxInt brandIndex = 0.obs;
  RxInt seasonsIndex = 0.obs;
  RxInt categoryIndex = 0.obs;

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
    int? brandId,
    int? categoryId,
    String? lotNumber,
    int? seasonId,
    String? designers,
    String? gender,
    String? fabric,
    String? size,
    double? price,
    String? status,
    String? imageVariationListTitles2,
    String? image1,
  }) async {
    try {
      isNewDesignLoading.value = true;
      // print("vendorId  :- ${vendorId}");
      // print("styleNo   :- ${styleNo}");
      // print("brandId   :- ${brandId}");
      // print("categoryId:- ${categoryId}");
      // print("lotNumber :- ${lotNumber}");
      // print("seasonId  :- ${seasonId}");
      // print("designers :- ${designers}");
      // print("gender    :- ${gender}");
      // print("fabric    :- ${fabric}");
      // print("size      :- ${size}");
      // print("price      :- ${price}");
      // print("status     :- ${status}");
      // print("imageVariationListTitles2     :- ${imageVariationListTitles2}");
      // print("image1     :- ${image1}");

      var headers = {
        'Request-From': 'Postman',
        'Accept-Language': 'en',
        'CF-Token': '{{CF-Token}}',
        'Authorization': 'Bearer ${AppSharedPreference.jwtToken}'
      };
      var request = http.MultipartRequest('POST', Uri.parse('https://api.gartext.com/api/vendor/save-design'));
      request.fields.addAll({
        'vendor_id': "$vendorId",
        'style_no': '$styleNo',
        'brand_id': '1',
        'category_id': '1',
        'lot_number': '$lotNumber',
        'season_id': '1',
        'designers': '$designers',
        'gender': '$gender',
        'fabric': '$fabric',
        'size': '$size',
        'price': '$price',
        'status': '$status',
        'image_variation_list_titles': 'title1'
      });
      request.files.add(await http.MultipartFile.fromPath('image', '$image1'));
      request.files.add(await http.MultipartFile.fromPath('image_variation_list', '$imageVariationListTitles2'));
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        // print("stream: - ${await response.stream.bytesToString()}");
        await homePageController.getNewDesign();
        Navigation.popAndPushNamed(Routes.dashBordScreen);
      } else {
        print(response.reasonPhrase);
        showToast.toastMessage("${response.reasonPhrase}");
      }

      ///
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
