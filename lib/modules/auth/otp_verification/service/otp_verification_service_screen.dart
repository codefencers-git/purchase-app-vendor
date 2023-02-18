import 'dart:convert';
import 'dart:developer';
import 'package:purchase_vendor/helper/network_helper.dart';
import 'package:purchase_vendor/utils/appconfig.dart';

class LoginService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  LoginService();

  /// RegisterOtp
  static Future<dynamic> registerOtp({
    required String mobileNumber,
  }) async {
    try {
      final result =
          await _networkAPICall.get(AppConfig.registerOtp + mobileNumber);
      log("RegisterOtpModel Result--->$result");

      return result;
    } catch (e, st) {
      log("error :- $e $st");
      rethrow;
    }
  }

  /// Register
  static Future<dynamic> register({
    required int country_code,
    required String name,
    required String userType,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String mobile,
    required int phoneNumber,
    required String gender,
    required String dob,
  }) async {
    try {
      var body = json.encode({
        "user_type": userType,
        "name": name,
        "email": email,
        "country_code": country_code,
        "password": password,
        "mobile": mobile,
        "phone_number": phoneNumber,
        "gender": gender,
        "dob": dob,
      });
      final headers = {'Content-Type': 'application/json'};
      final response = await _networkAPICall.post(AppConfig.register,
          body: body, header: headers);
      log("RegisterModel Result--->$response");
      return response;
    } catch (e, st) {
      log("error :- $e $st");
      rethrow;
    }
  }

  /// Login
  static Future<dynamic> login({
    required String username,
    required String password,
  }) async {
    try {
      var body = json.encode({
        "username": username,
        "password": password,
        "device_type": "Android",
      });
      var headers = {
        'Request-From': 'Postman',
        'Content-Type': 'application/json',
        'Accept-Language': 'en',
        'CF-Token': ''
      };
      final result = await _networkAPICall.post(
        AppConfig.login,
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
