// To parse this JSON data, do
//
//     final senOtpModel = senOtpModelFromJson(jsonString);

import 'dart:convert';

SenOtpModel senOtpModelFromJson(String str) =>
    SenOtpModel.fromJson(json.decode(str));

String senOtpModelToJson(SenOtpModel data) => json.encode(data.toJson());

class SenOtpModel {
  SenOtpModel({
    this.success,
    this.status,
    this.message,
    this.data,
  });

  String? success;
  String? status;
  String? message;
  List<dynamic>? data;

  factory SenOtpModel.fromJson(Map<String, dynamic> json) => SenOtpModel(
        success: json["success"] == null ? null : json["success"],
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? []
            : List<dynamic>.from(json["data"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
      };
}
