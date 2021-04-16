import 'package:flutter/material.dart';

class Exams4 extends StatefulWidget {
  @override
  _Exams4State createState() => _Exams4State();
}

class _Exams4State extends State<Exams4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Exams4',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}