import 'package:flutter/material.dart';
import 'package:flutter_flu/models/publications.dart';
import 'package:flutter_flu/screens/ViewPubliPage.dart';

class PublicationCard extends StatelessWidget {
  final Publications publication;
  const PublicationCard({Key key, @required this.publication})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PubliView(publication: publication)));
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 3.0,
                  spreadRadius: 2.0,
                  color: Colors.grey.withOpacity(.7)),
            ],
            border: Border.all(style: BorderStyle.solid, color: Colors.blue),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 03),
                child: Text("${publication.author}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 03),
                child: Text("${publication.post} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 03),
                child: Text(
                  publication.container,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 03),
                child: Text("Publi?? le : ${publication.date} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green)),
              ),
            ],
          ),
        ));
  }
}
