import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';

class BullView extends StatelessWidget {
  const BullView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBackgroundColor,
          title: Text(schoolName),
        ),
        body: Column(),
      ),
    );
  }
}
