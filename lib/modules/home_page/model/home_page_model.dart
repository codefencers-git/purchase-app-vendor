// To parse this JSON data, do
//
//     final getNewDesignPostModel = getNewDesignPostModelFromJson(jsonString);

import 'dart:convert';

GetNewDesignPostModel getNewDesignPostModelFromJson(String str) =>
    GetNewDesignPostModel.fromJson(json.decode(str));

String getNewDesignPostModelToJson(GetNewDesignPostModel data) =>
    json.encode(data.toJson());

class GetNewDesignPostModel {
  GetNewDesignPostModel({
    this.success,
    this.status,
    this.message,
    this.data,
  });

  String? success;
  String? status;
  String? message;
  List<Datum>? data;

  factory GetNewDesignPostModel.fromJson(Map<String, dynamic> json) =>
      GetNewDesignPostModel(
        success: json["success"] == null ? null : json["success"],
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.id,
    this.image,
    this.styleNo,
    this.name,
    this.status,
    this.vendor,
  });

  String? id;
  String? image;
  String? styleNo;
  String? name;
  String? status;
  String? vendor;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] == null ? null : json["id"],
        image: json["image"] == null ? null : json["image"],
        styleNo: json["style_no"] == null ? null : json["style_no"],
        name: json["name"] == null ? null : json["name"],
        status: json["status"] == null ? null : json["status"],
        vendor: json["vendor"] == null ? null : json["vendor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "style_no": styleNo,
        "name": name,
        "status": status,
        "vendor": vendor,
      };
}
