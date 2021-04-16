import 'package:flutter/material.dart';

class Exams2 extends StatefulWidget {
  @override
  _Exams2State createState() => _Exams2State();
}

class _Exams2State extends State<Exams2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Exams2',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}