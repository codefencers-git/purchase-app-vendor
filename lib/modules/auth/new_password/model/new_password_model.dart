// To parse this JSON data, do
//
//     final newPasswordModel = newPasswordModelFromJson(jsonString);

import 'dart:convert';

NewPasswordModel newPasswordModelFromJson(String str) => NewPasswordModel.fromJson(json.decode(str));

String newPasswordModelToJson(NewPasswordModel data) => json.encode(data.toJson());

class NewPasswordModel {
  NewPasswordModel({
    this.success,
    this.status,
    this.message,
    this.data,
  });

  String? success;
  String? status;
  String? message;
  List<dynamic>? data;

  factory NewPasswordModel.fromJson(Map<String, dynamic> json) => NewPasswordModel(
    success: json["success"],
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? [] : List<dynamic>.from(json["data"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "status": status,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
  };
}
