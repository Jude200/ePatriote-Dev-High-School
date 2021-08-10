import 'package:flutter/material.dart';

class User {
  String id;
  String name;
  String email;
  String password;
  String date;
  User({
    this.id,
    @required this.name,
    @required this.email,
    @required this.password,
    @required this.date,
  });
}
