// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ApiService {
//   // Define the API endpoint
//   // final String _url = 'http://54.238.88.202:3000/api/users';
//   // // var uri = Uri.
//   // // Function to make the GET request
//   // Future<List<dynamic>> getPosts() async {
//   //   var response = await http.get(Uri.parse(_url));

//   //   // Check the status code
//   //   if (response.statusCode == 200) {
//   //     // If the request was successful, parse the JSON response
//   //     var jsonResponse = json.decode(response.body);
//   //     print(jsonResponse);
//   //     return jsonResponse;
//   //   } else {
//   //     // If the request was not successful, throw an error
//   //     throw Exception('Failed to load posts');
//   //   }
//   // }

//   Future<User> getUser() async {
//     var response =
//         await http.get(Uri.parse('http://54.238.88.202:3000/api/users/2'));
//     if (response.statusCode == 200) {
//       var jsonResponse = json.decode(response.body);
//       User user = User.fromJson(jsonResponse);
//       return user;
//     } else {
//       throw Exception('Failed to load user');
//     }
//   }

//   // Future<List<User>> getUser() async {
//   //   var headers = {
//   //     // "Access-Control-Allow-Origin": "*",
//   //     'Content-Type': 'application/json'
//   //     // 'Accept': '*/*'
//   //   };
//   //   var response = await http.get(
//   //       Uri.parse('http://54.238.88.202:3000/api/users/2'),
//   //       headers: headers);
//   //   if (response.statusCode == 200) {
//   //     var jsonResponse = json.decode(response.body);
//   //     print(jsonResponse);
//   //     <List<User>> user = User.fromJson(jsonResponse);
//   //     return user;
//   //   } else {
//   //     throw Exception('Failed to load user');
//   //   }
//   // }
//   Future<List<User>> getUsers() async {
//     var response =
//         await http.get(Uri.parse('http://3.109.143.164:3000/api/users'));
//     if (response.statusCode == 200) {
//       var jsonResponse = json.decode(response.body);
//       List<User> users =
//           jsonResponse.map<User>((item) => User.fromJson(item)).toList();
//       return users;
//     } else {
//       print(response.statusCode);
//       print(response.body);
//       throw Exception('Failed to load users');
//     }
//   }
// }

// class User {
//   final int? id;
//   final String? name;
//   final String? email;
//   final String? password;
//   final String? mobile;
//   final String? address;
//   final String? profession;
//   final String? date_of_joining;
//   final String? DOB;
//   final String? gender;
//   final Map<String, dynamic>? is_veg;
//   final String? pan_no;

//   User(
//       {this.id,
//       this.name,
//       this.email,
//       this.password,
//       this.mobile,
//       this.address,
//       this.profession,
//       this.date_of_joining,
//       this.DOB,
//       this.gender,
//       this.is_veg,
//       this.pan_no});

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//         id: json['id'],
//         name: json['name'],
//         email: json['email'],
//         password: json['password'],
//         mobile: json['mobile'],
//         address: json['address'],
//         profession: json['profession'],
//         date_of_joining: json['date_of_joining'],
//         DOB: json['DOB'],
//         gender: json['gender'],
//         is_veg: json['is_veg'],
//         pan_no: json['pan_no']);
//   }
// }


// // Column(
// //               children: [
// //                 Text('Id: ${snapshot.data!.id}'),
// //                 Text('Name: ${snapshot.data!.name}'),
// //                 Text('Email: ${snapshot.data!.email}'),
// //                 Text('Mobile: ${snapshot.data!.mobile}'),
// //                 Text('Address: ${snapshot.data!.address}'),
// //                 Text('Profession: ${snapshot.data!.profession}'),
// //                 Text('date_of_joining: ${snapshot.data!.date_of_joining}'),
// //                 Text('DOB: ${snapshot.data!.DOB}'),
// //                 Text('Gender: ${snapshot.data!.gender}'),
// //                 Text('pan_no: ${snapshot.data!.pan_no}'),
// //                 Text('Is_veg: ${snapshot.data!.is_veg!["data"][0]}'),
// //               ],
// //             );