// bullPage : Page de bulletin

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/services/allFunctions.dart';

class BullPage extends StatefulWidget {
  const BullPage({Key key}) : super(key: key);

  @override
  State<BullPage> createState() => _BullPageState();
}

class _BullPageState extends State<BullPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: ExpansionTile(
            title: Text("Mes Notes",
                style: TextStyle(fontWeight: FontWeight.bold)),
            children: itemListTileMater(context),
          ),
        ),
      ],
    );
  }
}
