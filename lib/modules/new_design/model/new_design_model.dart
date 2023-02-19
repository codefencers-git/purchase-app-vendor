// To parse this JSON data, do
//
//     final newDesignPostModel = newDesignPostModelFromJson(jsonString);

import 'dart:convert';

NewDesignPostModel newDesignPostModelFromJson(String str) =>
    NewDesignPostModel.fromJson(json.decode(str));

String newDesignPostModelToJson(NewDesignPostModel data) =>
    json.encode(data.toJson());

class NewDesignPostModel {
  NewDesignPostModel({
    this.success,
    this.status,
    this.message,
    this.data,
  });

  String? success;
  String? status;
  String? message;
  List<dynamic>? data;

  factory NewDesignPostModel.fromJson(Map<String, dynamic> json) =>
      NewDesignPostModel(
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
