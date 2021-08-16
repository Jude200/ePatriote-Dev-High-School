import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

flushBarAdd(_) async {
  return Flushbar(
    title: "Inscription effectué ",
    message: "Merci !!!",
    duration: Duration(seconds: 3),
    messageColor: Colors.green,
    icon: Icon(Icons.check_circle, color: Colors.green),
  ).show(_);
}

flushBarIdentifiant(_) async {
  return Flushbar(
    title: "Identifiant erroné ",
    message: "Mot de passe incorrect",
    duration: Duration(seconds: 3),
    messageColor: Colors.red,
    icon: Icon(Icons.face, color: Colors.red),
  ).show(_);
}
