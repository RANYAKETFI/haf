import 'package:flutter/material.dart';
import 'package:haf/models/Experience.dart';
class Volunteer{
final String uid;
final String email;
//final String password;
Volunteer({this.uid,this.email});


}
class UserData{

  final String uid;
  final String username;
  final String email;
  final String phone;
  final List<Experience> experiences;
  UserData({this.uid, this.username, this.email, this.phone,this.experiences});
  
}