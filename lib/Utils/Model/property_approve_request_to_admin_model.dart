import 'dart:convert';

class PropertyApproveRequestToAdminModel {
  String propertyImage;
  String propertyName;
  String posetingDate;
  String bedRooms;
  String bathRooms;
  String propertyArea;
  String propertyPrice;
  String propertyType;
  String propertyStatus;
  String prpertyBio;

  PropertyApproveRequestToAdminModel({
    required this.propertyName,
    required this.propertyImage,
    required this.posetingDate,
    required this.propertyStatus,
    required this.propertyPrice,
    required this.bedRooms,
    required this.bathRooms,
    required this.propertyArea,
    required this.propertyType,
    required this.prpertyBio,
  });
}

// "propertyImage" : "https://plus.unsplash.com/premium_photo-1661876449499-26de7959878f?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
// "propertyName" : "Property 1",
// "posetingDate" : "30 Jan 2022",
// "bedRooms" : "4",
// "bathRooms" : "2",
// "propertyArea" : "321",
// "propertyPrice" : "23,165",
// "propertyType" : "Rented",

// To parse this JSON data, do
//
//     final propertyResponseMOdel = propertyResponseMOdelFromJson(jsonString);

PropertyResponseMOdel propertyResponseMOdelFromJson(String str) =>
    PropertyResponseMOdel.fromJson(json.decode(str));

String propertyResponseMOdelToJson(PropertyResponseMOdel data) =>
    json.encode(data.toJson());

class PropertyResponseMOdel {
  final bool? success;
  final int? statusCode;
  final String? message;
  final List<PropertyInfo>? data;

  PropertyResponseMOdel({
    this.success,
    this.statusCode,
    this.message,
    this.data,
  });

  factory PropertyResponseMOdel.fromJson(Map<String, dynamic> json) =>
      PropertyResponseMOdel(
        success: json["success"],
        statusCode: json["statusCode"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<PropertyInfo>.from(
                json["data"]!.map((x) => PropertyInfo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "statusCode": statusCode,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class PropertyInfo {
  final PropertyLocation? propertyLocation;
  final String? id;
  final String? propertyName;
  final int? propertyPrice;
  final DateTime? propertyUploadingDate;
  final DateTime? lastStatusUpdatingDate;
  final String? propertyStatus;
  final String? propertyType;
  final int? bedrooms;
  final int? bathrooms;
  final int? area;
  final String? propertyBio;
  final String? propertyVideo;
  final String? owner;
  final List<String>? propertyImages;
  final String? propertyDocuments;
  final bool? isVerified;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  PropertyInfo({
    this.propertyLocation,
    this.id,
    this.propertyName,
    this.propertyPrice,
    this.propertyUploadingDate,
    this.lastStatusUpdatingDate,
    this.propertyStatus,
    this.propertyType,
    this.bedrooms,
    this.bathrooms,
    this.area,
    this.propertyBio,
    this.propertyVideo,
    this.owner,
    this.propertyImages,
    this.propertyDocuments,
    this.isVerified,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory PropertyInfo.fromJson(Map<String, dynamic> json) => PropertyInfo(
        propertyLocation: json["propertyLocation"] == null
            ? null
            : PropertyLocation.fromJson(json["propertyLocation"]),
        id: json["_id"],
        propertyName: json["propertyName"],
        propertyPrice: json["propertyPrice"],
        propertyUploadingDate: json["propertyUploadingDate"] == null
            ? null
            : DateTime.parse(json["propertyUploadingDate"]),
        lastStatusUpdatingDate: json["lastStatusUpdatingDate"] == null
            ? null
            : DateTime.parse(json["lastStatusUpdatingDate"]),
        propertyStatus: json["propertyStatus"],
        propertyType: json["propertyType"],
        bedrooms: json["bedrooms"],
        bathrooms: json["bathrooms"],
        area: json["area"],
        propertyBio: json["propertyBio"],
        propertyVideo: json["propertyVideo"],
        owner: json["owner"],
        propertyImages: json["propertyImages"] == null
            ? []
            : List<String>.from(json["propertyImages"]!.map((x) => x)),
        propertyDocuments: json["propertyDocuments"],
        isVerified: json["isVerified"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "propertyLocation": propertyLocation?.toJson(),
        "_id": id,
        "propertyName": propertyName,
        "propertyPrice": propertyPrice,
        "propertyUploadingDate": propertyUploadingDate?.toIso8601String(),
        "lastStatusUpdatingDate": lastStatusUpdatingDate?.toIso8601String(),
        "propertyStatus": propertyStatus,
        "propertyType": propertyType,
        "bedrooms": bedrooms,
        "bathrooms": bathrooms,
        "area": area,
        "propertyBio": propertyBio,
        "propertyVideo": propertyVideo,
        "owner": owner,
        "propertyImages": propertyImages == null
            ? []
            : List<dynamic>.from(propertyImages!.map((x) => x)),
        "propertyDocuments": propertyDocuments,
        "isVerified": isVerified,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class PropertyLocation {
  final double? longitude;
  final double? latitude;

  PropertyLocation({
    this.longitude,
    this.latitude,
  });

  factory PropertyLocation.fromJson(Map<String, dynamic> json) =>
      PropertyLocation(
        longitude: json["longitude"]?.toDouble(),
        latitude: json["latitude"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "longitude": longitude,
        "latitude": latitude,
      };
}
