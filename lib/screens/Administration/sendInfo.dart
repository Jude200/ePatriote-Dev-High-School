import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_flu/models/publications.dart';
import 'package:flutter_flu/services/allFunctions.dart';
import 'package:flutter_flu/widgets/AppBar.dart';

class SendInfo extends StatefulWidget {
  const SendInfo({Key key}) : super(key: key);

  @override
  _SendInfoState createState() => _SendInfoState();
}

class _SendInfoState extends State<SendInfo> {
  GlobalKey<FormState> _key = GlobalKey();
  String _title;
  String _container;
  bool isValidate = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Nouvelle Publication",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Form(
              key: _key,
              child: Expanded(
                  child: Container(
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      child: TextFormField(
                        maxLines: 3,
                        cursorColor: Colors.black54,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.aod),
                            prefixText: "Sujet : ",
                            prefixStyle: TextStyle(color: Colors.black)),
                        onSaved: (value) {
                          _title = value;
                        },
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Message",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Icon(Icons.sms_outlined),
                        ],
                      ),
                    ),
                    Container(
                      //    margin: EdgeInsets.symmetric(vertical: 20),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      child: TextFormField(
                        maxLines: 20,
                        cursorColor: Colors.black54,
                        cursorHeight: 20,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Message ",
                            prefixStyle: TextStyle(color: Colors.black)),
                        onSaved: (value) {
                          _container = value;
                        },
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.grey.shade300,
                            child: TextButton.icon(
                              onPressed: () {},
                              label: Text("Annuler"),
                              icon: Icon(Icons.close),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            color: Colors.grey.shade300,
                            child: TextButton.icon(
                              onPressed: () async {
                                bool b = _key.currentState.validate() ?? false;
                                setState(() {
                                  isValidate = true;
                                });

                                if (b) {
                                  _key.currentState.save();
                                  Publications publication = Publications(
                                      author: "Nom de L'auteur",
                                      title: _title,
                                      container: _container,
                                      date:
                                          formatDate(DateTime.now().toString()),
                                      post: "censeur");
                                }
                              },
                              label: Text("Publier"),
                              icon: Icon(Icons.send_outlined),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    )
                  ],
                ),
              )))
        ],
      ),
    ));
  }
}
