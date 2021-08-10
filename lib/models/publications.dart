import 'dart:convert';
import 'package:flutter/material.dart';

class Publications {
  int id; // identifiant de la publication
  String author; // nom et prenom de la personne qui à l'a publié
  String container; // contenu de la publication
  String date; // date de la publication
  String file; // fichier (photo, pdf, excel et autre)
  String post; // postt qu'occupe l'auteur de la publication
  Publications({
    this.id,
    @required this.author,
    @required this.container,
    @required this.date,
    this.file,
    @required this.post,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'author': author,
      'container': container,
      'date': date,
      'file': file,
      'post': post,
    };
  }

  factory Publications.fromMap(Map<String, dynamic> map) {
    return Publications(
      id: map['id'],
      author: map['author'],
      container: map['container'],
      date: map['date'],
      file: map['file'],
      post: map['post'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Publications.fromJson(String source) =>
      Publications.fromMap(json.decode(source));
}
