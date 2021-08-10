import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

flushBarAdd(_) async {
  return Flushbar(
    title: "Ajout effectué ",
    message: "Merci !!!",
    duration: Duration(seconds: 3),
    messageColor: Colors.green,
    icon: Icon(Icons.check_circle, color: Colors.green),
  ).show(_);
}
