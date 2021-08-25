import 'package:flutter/material.dart';
import 'package:flutter_flu/models/dataBase/data.dart';
import 'package:flutter_flu/models/user.dart';
import 'package:flutter_flu/widgets/floatingbutton.dart';
import 'package:flutter_flu/widgets/publicationsCard.dart';

class PubliPage extends StatefulWidget {
  final User user;
  const PubliPage({Key key, @required this.user}) : super(key: key);

  @override
  _PubliPageState createState() => _PubliPageState();
}

class _PubliPageState extends State<PubliPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return PublicationCard(
                    publication: publications[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
                itemCount: publications.length),
          ),
        ),
        widget.user.statut == "censeur" || widget.user.statut == "professeur"
            ? FloatingButton()
            : Container()
      ],
    );
  }
}
