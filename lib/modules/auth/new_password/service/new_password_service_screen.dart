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

      final result = await _networkAPICall.post(
        AppConfig.newPassword,
        body: body,
      );
      log("Login Result--->${result.toString()}");

      return result;
    } catch (e, st) {
      log("error :- $e $st");
      rethrow;
    }
  }
}
