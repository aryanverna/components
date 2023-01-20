import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  final int? id;
  final String? name;
  final String? email;
  final String? mobile;
  final String? address;
  final String? profession;
  final String? date_of_joining;
  final String? DOB;
  final String? gender;
  final String? pan_no;

  User(
      {this.id,
      this.name,
      this.email,
      this.mobile,
      this.address,
      this.profession,
      this.date_of_joining,
      this.DOB,
      this.gender,
      this.pan_no});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      address: json['address'],
      profession: json['profession'],
      date_of_joining: json['date_of_joining'],
      DOB: json['DOB'],
      gender: json['gender'],
      pan_no: json['pan_no'],
    );
  }
}

Future<List<User>> getUsers() async {
  final response =
      await http.get(Uri.parse('http://3.109.143.164:3000/api/users'));
  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = jsonDecode(response.body);
    return jsonResponse.map((user) => new User.fromJson(user)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
