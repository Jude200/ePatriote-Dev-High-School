import 'dart:convert';

import 'package:flutter/material.dart';

class User {
  int id;
  String name;
  String email;
  String phone;
  String password;
  String date;
  String statut;
  User(
      {this.id,
      @required this.name,
      @required this.email,
      @required this.phone,
      @required this.password,
      @required this.date,
      @required this.statut});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'date': date,
      'statut': statut,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      password: map['password'],
      date: map['date'],
      statut: map['statut'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
