import 'package:flutter/material.dart';
import 'package:flutter_flu/screens/Administration/ViewBullPage.dart';

class BullPage extends StatelessWidget {
  const BullPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BullView()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Cette année",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
