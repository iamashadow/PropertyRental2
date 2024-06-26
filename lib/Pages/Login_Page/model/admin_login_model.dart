// To parse this JSON data, do
//
//     final adminLoginRpModel = adminLoginRpModelFromJson(jsonString);

import 'dart:convert';

AdminLoginRpModel adminLoginRpModelFromJson(String str) =>
    AdminLoginRpModel.fromJson(json.decode(str));

String adminLoginRpModelToJson(AdminLoginRpModel data) =>
    json.encode(data.toJson());

class AdminLoginRpModel {
  final bool? success;
  final int? statusCode;
  final String? message;
  final AdminData? data;

  AdminLoginRpModel({
    this.success,
    this.statusCode,
    this.message,
    this.data,
  });

  factory AdminLoginRpModel.fromJson(Map<String, dynamic> json) =>
      AdminLoginRpModel(
        success: json["success"],
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? null : AdminData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "statusCode": statusCode,
        "message": message,
        "data": data?.toJson(),
      };
}

class AdminData {
  final String? token;
  final AdminAccount? account;

  AdminData({
    this.token,
    this.account,
  });

  factory AdminData.fromJson(Map<String, dynamic> json) => AdminData(
        token: json["token"],
        account: json["account"] == null
            ? null
            : AdminAccount.fromJson(json["account"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "account": account?.toJson(),
      };
}

class AdminAccount {
  final String? id;
  final String? email;
  final String? mobile;
  final String? password;
  final String? name;
  final String? profile;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  AdminAccount({
    this.id,
    this.email,
    this.mobile,
    this.password,
    this.name,
    this.profile,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory AdminAccount.fromJson(Map<String, dynamic> json) => AdminAccount(
        id: json["_id"],
        email: json["email"],
        mobile: json["mobile"],
        password: json["password"],
        name: json["name"],
        profile: json["profile"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "email": email,
        "mobile": mobile,
        "password": password,
        "name": name,
        "profile": profile,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}
