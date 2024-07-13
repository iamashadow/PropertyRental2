// To parse this JSON data, do
//
//     final userProfileDetails = userProfileDetailsFromJson(jsonString);

import 'dart:convert';

UserProfileDetails userProfileDetailsFromJson(String str) => UserProfileDetails.fromJson(json.decode(str));

String userProfileDetailsToJson(UserProfileDetails data) => json.encode(data.toJson());

class UserProfileDetails {
  final bool? success;
  final int? statusCode;
  final String? message;
  final MainUserData? data;

  UserProfileDetails({
    this.success,
    this.statusCode,
    this.message,
    this.data,
  });

  factory UserProfileDetails.fromJson(Map<String, dynamic> json) => UserProfileDetails(
    success: json["success"],
    statusCode: json["statusCode"],
    message: json["message"],
    data: json["data"] == null ? null : MainUserData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "statusCode": statusCode,
    "message": message,
    "data": data?.toJson(),
  };
}

class MainUserData {
  final String? token;
  final User? user;
  final String? role;

  MainUserData({
    this.token,
    this.user,
    this.role,
  });

  factory MainUserData.fromJson(Map<String, dynamic> json) => MainUserData(
    token: json["token"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    role: json["role"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "user": user?.toJson(),
    "role": role,
  };
}

class User {
  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final bool? verified;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;
  final DateTime? dob;
  final String? image;
  final String? nationality;
  final String? nid;
  final String? phone;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.verified,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.dob,
    this.image,
    this.nationality,
    this.nid,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    name: json["name"],
    email: json["email"],
    password: json["password"],
    verified: json["verified"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    image: json["image"],
    nationality: json["nationality"],
    nid: json["nid"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "email": email,
    "password": password,
    "verified": verified,
    "createdAt": createdAt?.toIso8601String(),
    "updatedAt": updatedAt?.toIso8601String(),
    "__v": v,
    "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    "image": image,
    "nationality": nationality,
    "nid": nid,
    "phone": phone,
  };
}
