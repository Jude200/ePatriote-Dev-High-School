import 'package:flutter/material.dart';
import 'package:flutter_flu/models/data.dart';
import 'package:flutter_flu/widgets/publicationsCard.dart';

class PubliPage extends StatefulWidget {
  const PubliPage({Key key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(horizontal: 05.00),
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
        )
      ],
    );
  }
}
