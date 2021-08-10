import 'package:flutter/material.dart';

final String schoolName = "ePatriote Dev High School";
final String defaultImage = "assets/images/paysage.jpg";
final Color appBackgroundColor = Color(0XFF3E3E3E);

double width(_) {
  return MediaQuery.of(_).size.width; // largeur de l'ecran
}

double height(_) {
  return MediaQuery.of(_).size.height; // longueur de l'ecran
}
