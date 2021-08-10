import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/publications.dart';

class PublicationCard extends StatelessWidget {
  final Publications publication;
  const PublicationCard({Key key, @required this.publication})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width(context),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(style: BorderStyle.solid)),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 05),
                child: Text("${publication.author}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 05),
                child: Text("${publication.post} ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 05),
                child: Text(
                  publication.container,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 05),
                child: Text("Publié le : ${publication.date} ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ],
          ),
        ));
  }
}
