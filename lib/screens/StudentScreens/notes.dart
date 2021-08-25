import 'package:flutter/material.dart';
import 'package:flutter_flu/widgets/AppBar.dart';

class MatterNotes extends StatefulWidget {
  const MatterNotes({Key key}) : super(key: key);

  @override
  _MatterNotesState createState() => _MatterNotesState();
}

class _MatterNotesState extends State<MatterNotes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(),
      body: Expanded(
        child: Container(child: ListView()),
      ),
    ));
  }
}
