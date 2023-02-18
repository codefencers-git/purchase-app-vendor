// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
     this.success,
     this.status,
     this.message,
     this.data,
  });

  String? success;
  String? status;
  String? message;
  Data? data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        success: json["success"] == null ? null : json["success"],
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: Data.fromJson(json["data"] == null ? null : json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
     this.id,
     this.name,
     this.userType,
     this.countryCode,
     this.mobileNumber,
     this.customId,
     this.token,
  });

  String? id;
  String? name;
  String? userType;
  String? countryCode;
  String? mobileNumber;
  String? customId;
  String? token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"]== null ? null :json["id"],
        name: json["name"]== null ? null :json["name"],
        userType: json["user_type"]== null ? null :json["user_type"],
        countryCode: json["country_code"]== null ? null :json["country_code"],
        mobileNumber: json["mobile_number"]== null ? null :json["mobile_number"],
        customId: json["custom_id"]== null ? null :json["custom_id"],
        token: json["token"]== null ? null :json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "user_type": userType,
        "country_code": countryCode,
        "mobile_number": mobileNumber,
        "custom_id": customId,
        "token": token,
      };
}
