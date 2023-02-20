import 'dart:convert';
import 'dart:developer';

import 'package:purchase_vendor/helper/network_helper.dart';
import 'package:purchase_vendor/utils/appconfig.dart';

class ForgotPasswordService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  ForgotPasswordService();

  /// Login
  static Future<dynamic> sendOtp({
    required String username,
  }) async {
    try {
      var body = json.encode({
        "username": username,
      });

      final result = await _networkAPICall.post(
        AppConfig.sendOTP,
        body: body,
      );
      log("sendOtp Result--->${result.toString()}");

      return result;
    } catch (e, st) {
      log("error :- $e $st");
      rethrow;
    }
  }
}
