import 'package:flutter/material.dart';
import 'package:flutter_flu/screens/Authentification.dart';

class Home extends StatelessWidget {
  const Home({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Authentification());
  }
}
