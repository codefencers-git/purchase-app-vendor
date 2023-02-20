import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:purchase_vendor/helper/network_helper.dart';
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/utils/appconfig.dart';

class HomePageService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  HomePageService();

  static Future<dynamic> getNewDesign() async {
    try {
      var headers = {
        'Request-From': 'Postman',
        'Content-Type': 'application/json',
        'Accept-Language': 'en',
        'CF-Token': '',
        'Authorization': 'Bearer ${AppSharedPreference.jwtToken}'
      };
      final result = await _networkAPICall.post(
        AppConfig.getDesigns,
        header: headers,
      );
      log("getNewDesign result ---> $result");
      return result;
    } catch (e, st) {
      print("Error---> $e $st");
      return null;
    }
  }

  /// Login
// static Future<dynamic> sendNewDesign({
// required File image,
// }) async {
//   try {
//     var body = {
//       'vendor_id': '3',
//       'style_no': 'stype no3',
//       'brand_id': '1',
//       'category_id': '1',
//       'lot_number': 'lot number 21',
//       'season_id': '1',
//       'designers': 'designer 1',
//       'gender': 'Female',
//       'fabric': 'faric 1',
//       'size': '1, 2, 3',
//       'price': '100.00',
//       'status': 'Activated',
//       'image_variation_list_titles': 'title1'
//     };
//     var headers = {
//       'Request-From': 'Postman',
//       'Accept-Language': 'en',
//       'CF-Token': '',
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNjc2NjkwNTY5LCJleHAiOjE2NzY3NzY5Njl9.rxZSK3-IZH55kCgEQr6k0vlu-nHFMBr1cwyT9eyC7Fk'
//     };
//     final result = await _networkAPICall.multipartRequest(
//       AppConfig.addDesign,
//       body,
//       "Post",
//       image: image,
//       imageKey: "files",
//       header: headers,
//     );
//     log("sendOtp Result--->${result.toString()}");
//
//     return result;
//   } catch (e, st) {
//     log("error :- $e $st");
//     rethrow;
//   }
// }
}
