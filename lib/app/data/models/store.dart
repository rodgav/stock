// To parse this JSON data, do
//
//     final storeModel = storeModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

StoreModel storeModelFromJson(String str) => StoreModel.fromJson(json.decode(str));

String storeModelToJson(StoreModel data) => json.encode(data.toJson());

class StoreModel {
  StoreModel({
    required this.sum,
    required this.documents,
  });

  int sum;
  List<Store> documents;

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
    sum: json["sum"],
    documents: List<Store>.from(json["documents"].map((x) => Store.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sum": sum,
    "documents": List<dynamic>.from(documents.map((x) => x.toJson())),
  };
}

class Store {
  Store({
    required this.id,
    required this.collection,
    required this.permissions,
    required this.userId,
    required this.name,
  });

  String id;
  String collection;
  Permissions permissions;
  String userId;
  String name;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    id: json["\u0024id"],
    collection: json["\u0024collection"],
    permissions: Permissions.fromJson(json["\u0024permissions"]),
    userId: json["userId"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024id": id,
    "\u0024collection": collection,
    "\u0024permissions": permissions.toJson(),
    "userId": userId,
    "name": name,
  };
}

class Permissions {
  Permissions({
    required this.read,
    required this.write,
  });

  List<String> read;
  List<String> write;

  factory Permissions.fromJson(Map<String, dynamic> json) => Permissions(
    read: List<String>.from(json["read"].map((x) => x)),
    write: List<String>.from(json["write"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "read": List<dynamic>.from(read.map((x) => x)),
    "write": List<dynamic>.from(write.map((x) => x)),
  };
}
