import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/screens/Administration/listUser.dart';

/* 

******  Outils utiles pour le menu du censeur ***********
*** La liste menu contient les options du menu
*** La liste menuWidget contient le push de chaque option c'est a dire le MaterialRoutePage
*** le liste menuIcon quant a elle contient l'icone de chaque option 

*/
List<String> menu = [
  "Info",
  "Utilisateur",
  "Classe",
  "Professeurs",
];
List<Widget> menuWidget = [
  Container(),
  ListUser(),
  Text("Eleves"),
  Text("Professeur")
];
List<IconData> menuIcon = [
  Icons.info,
  Icons.person,
  Icons.school,
  Icons.stacked_bar_chart
];

/*
  *** Liste des matieres
 */
List<String> matter = [
  "Francais",
  "Mathématique",
  "Physique Chimie et Technologie",
  "Anglais",
  "Informatique"
];
