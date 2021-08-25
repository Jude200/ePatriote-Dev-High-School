import 'package:flutter/material.dart';

class PageCensor extends StatefulWidget {
  final Widget widget;
  const PageCensor({Key key, @required this.widget}) : super(key: key);

  @override
  State<PageCensor> createState() => _PageCensorState();
}

class _PageCensorState extends State<PageCensor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.widget,
    );
  }
}
