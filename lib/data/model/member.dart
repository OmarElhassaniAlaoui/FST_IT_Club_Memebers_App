import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Member {
  String? fullname;
  String? email;
  String? phoneNumber;
  String? roll;
  String? education;
  String? profileImage;
  String? fb;
  String? insta;
  String? twiter;

  Member(
      {
      this.fullname,
      this.email,
      this.phoneNumber,
      this.roll,
      this.profileImage,
      this.education});
  Member.fromJson(Map<String, dynamic> parsedJson) {
    this.email = parsedJson['email'] as String;
    this.fullname = parsedJson['fullname'] as String;
    this.phoneNumber = parsedJson['phoneNumber'] as String;
    this.profileImage = parsedJson['profileImage'] as String;
    this.roll = parsedJson['roll'] as String;
    this.education = parsedJson['education'] as String;
  }
}
