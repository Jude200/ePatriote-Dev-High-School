import 'package:flutter/material.dart';
import 'package:flutter_flu/constants.dart';
import 'package:flutter_flu/models/data.dart';
import 'package:flutter_flu/widgets/drawer.dart';
import 'package:flutter_flu/widgets/publicationsCard.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({Key key}) : super(key: key);

  @override
  _StudentHomePageState createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: appBackgroundColor,
        title: Text(schoolName),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 50),
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
      ),
    );
  }
}
