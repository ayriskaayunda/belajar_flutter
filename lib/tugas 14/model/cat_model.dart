// To parse this JSON data, do
//
//     final catUsersModel = catUsersModelFromJson(jsonString);

import 'dart:convert';

List<CatUsersModel> catUsersModelFromJson(String str) =>
    List<CatUsersModel>.from(
      json.decode(str).map((x) => CatUsersModel.fromJson(x)),
    );

String catUsersModelToJson(List<CatUsersModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatUsersModel {
  String id;
  String url;
  int width;
  int height;

  CatUsersModel({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory CatUsersModel.fromJson(Map<String, dynamic> json) => CatUsersModel(
    id: json["id"],
    url: json["url"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "width": width,
    "height": height,
  };
}
