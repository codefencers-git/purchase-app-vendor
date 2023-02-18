import 'dart:convert';
import 'dart:developer';
import 'package:purchase_vendor/helper/network_helper.dart';
import 'package:purchase_vendor/utils/appconfig.dart';

class NewPasswordService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  NewPasswordService();


  /// newPassword
  static Future<dynamic> newPassword({
    required String currentPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      var body = json.encode({
        "current_password": currentPassword,
        "new_password": newPassword,
        "confirm_password": confirmPassword,
      });
      var headers = {
        'Request-From': 'Postman',
        'Content-Type': 'application/json',
        'Accept-Language': 'en',
        'CF-Token': '',
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywiaWF0IjoxNjc2NjkwNTY5LCJleHAiOjE2NzY3NzY5Njl9.rxZSK3-IZH55kCgEQr6k0vlu-nHFMBr1cwyT9eyC7Fk'
      };
      final result = await _networkAPICall.post(
        AppConfig.newPassword,
        body: body,
        header: headers,
      );
      log("Login Result--->${result.toString()}");

      return result;
    } catch (e, st) {
      log("error :- $e $st");
      rethrow;
    }
  }
}
