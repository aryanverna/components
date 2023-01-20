// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

List<Users?>? usersFromJson(String str) => json.decode(str) == null
    ? []
    : List<Users?>.from(json.decode(str)!.map((x) => Users.fromJson(x)));

String usersToJson(List<Users?>? data) => json.encode(
    data == null ? [] : List<dynamic>.from(data.map((x) => x!.toJson())));

class Users {
  Users({
    this.id,
    this.name,
    this.email,
    this.password,
    this.mobile,
    this.address,
    this.profession,
    this.dateOfJoining,
    this.dob,
    this.gender,
    this.isVeg,
    this.panNo,
  });

  int? id;
  String? name;
  String? email;
  String? password;
  String? mobile;
  String? address;
  String? profession;
  DateTime? dateOfJoining;
  DateTime? dob;
  String? gender;
  IsVeg? isVeg;
  String? panNo;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        mobile: json["mobile"],
        address: json["address"],
        profession: json["profession"],
        dateOfJoining: DateTime.parse(json["date_of_joining"]),
        dob: DateTime.parse(json["DOB"]),
        gender: json["gender"],
        isVeg: IsVeg.fromJson(json["is_veg"]),
        panNo: json["pan_no"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "mobile": mobile,
        "address": address,
        "profession": profession,
        "date_of_joining": dateOfJoining?.toIso8601String(),
        "DOB": dob?.toIso8601String(),
        "gender": gender,
        "is_veg": isVeg!.toJson(),
        "pan_no": panNo,
      };
}

class IsVeg {
  IsVeg({
    this.type,
    this.data,
  });

  String? type;
  List<int?>? data;

  factory IsVeg.fromJson(Map<String, dynamic> json) => IsVeg(
        type: json["type"],
        data: json["data"] == null
            ? []
            : List<int?>.from(json["data"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x)),
      };
}
