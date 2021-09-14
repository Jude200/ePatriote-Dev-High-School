import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flu/widgets/AppBar.dart';

class MatterNotes extends StatefulWidget {
  final String matter;
  const MatterNotes({Key key, @required this.matter}) : super(key: key);

  @override
  _MatterNotesState createState() => _MatterNotesState();
}

class _MatterNotesState extends State<MatterNotes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(widget.matter,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Acme')),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(border: Border.all()),
                              width: 200,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 10),
                                    child: Text("Interrogations"),
                                  ),
                                  Container(
                                    decoration:
                                        BoxDecoration(border: Border.all()),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("5555"),
                                        Text("8451"),
                                        Text("8955"),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
