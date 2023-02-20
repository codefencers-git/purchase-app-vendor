import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:purchase_vendor/helper/network_helper.dart';

class NewDesignScreenService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  NewDesignScreenService();
  static Future<dynamic> sendNewDesign() async {
    try {
      var headers = {
        'Request-From': 'Postman',
        'Accept-Language': 'en',
        'CF-Token': '',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNjc2NjkwNTY5LCJleHAiOjE2NzY3NzY5Njl9.rxZSK3-IZH55kCgEQr6k0vlu-nHFMBr1cwyT9eyC7Fk'
      };
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://api.gartext.com/api/vendor/save-design'));
      request.fields.addAll({
        'vendor_id': '3',
        'style_no': 'stype no3',
        'brand_id': '1',
        'category_id': '1',
        'lot_number': 'lot number 21',
        'season_id': '1',
        'designers': 'designer 1',
        'gender': 'Female',
        'fabric': 'faric 1',
        'size': '1, 2, 3',
        'price': '100.00',
        'status': 'Activated',
        'image_variation_list_titles': 'title1'
      });
      request.files.add(await http.MultipartFile.fromPath('image',
          '/C:/Users/darsh/Downloads/purchase_vendor (2)/purchase_vendor/assets/images/d5.png'));
      request.files.add(await http.MultipartFile.fromPath(
          'image_variation_list',
          '/C:/Users/darsh/Downloads/purchase_vendor (2)/purchase_vendor/assets/images/d6.png'));
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (e, st) {
      log("error :- $e $st");
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
