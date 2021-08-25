import 'package:flutter/material.dart';
import 'package:flutter_flu/models/publications.dart';
import 'package:flutter_flu/widgets/AppBar.dart';

class PubliView extends StatefulWidget {
  final Publications publication;
  const PubliView({Key key, @required this.publication}) : super(key: key);

  @override
  _PubliViewState createState() => _PubliViewState();
}

class _PubliViewState extends State<PubliView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    widget.publication.date,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text("${widget.publication.post}",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text("Sujet : ${widget.publication.title}",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text(
                    widget.publication.container,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Text("${widget.publication.author}",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
