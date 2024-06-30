// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  final bool? success;
  final int? statusCode;
  final String? message;
  final UserData? data;

  LoginResponse({
    this.success,
    this.statusCode,
    this.message,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        success: json["success"],
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null ? null : UserData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "statusCode": statusCode,
        "message": message,
        "data": data?.toJson(),
      };
}

class UserData {
  final String? token;
  final Account? account;
  final String? role;

  UserData({
    this.token,
    this.account,
    this.role,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        token: json["token"],
        account:
            json["account"] == null ? null : Account.fromJson(json["account"]),
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "account": account?.toJson(),
        "role": role,
      };
}

class Account {
  final String? id;
  final String? email;
  final String? password;
  final bool? verified;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;
  final String? bio;
  final DateTime? dateOfBirth;
  final String? mobileNumber;
  final String? name;
  final String? nationality;
  final String? nidImage;
  final String? officeNumber;
  final String? profileImage;
  final String? whatsAppNumber;

  Account({
    this.id,
    this.email,
    this.password,
    this.verified,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.bio,
    this.dateOfBirth,
    this.mobileNumber,
    this.name,
    this.nationality,
    this.nidImage,
    this.officeNumber,
    this.profileImage,
    this.whatsAppNumber,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        id: json["_id"],
        email: json["email"],
        password: json["password"],
        verified: json["verified"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        bio: json["bio"],
        dateOfBirth: json["dateOfBirth"] == null
            ? null
            : DateTime.parse(json["dateOfBirth"]),
        mobileNumber: json["mobileNumber"],
        name: json["name"],
        nationality: json["nationality"],
        nidImage: json["nidImage"],
        officeNumber: json["officeNumber"],
        profileImage: json["profileImage"],
        whatsAppNumber: json["whatsAppNumber"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "email": email,
        "password": password,
        "verified": verified,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "bio": bio,
        "dateOfBirth": dateOfBirth?.toIso8601String(),
        "mobileNumber": mobileNumber,
        "name": name,
        "nationality": nationality,
        "nidImage": nidImage,
        "officeNumber": officeNumber,
        "profileImage": profileImage,
        "whatsAppNumber": whatsAppNumber,
      };
}
