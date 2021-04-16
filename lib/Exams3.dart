import 'package:flutter/material.dart';

class Exams3 extends StatefulWidget {
  @override
  _Exams3State createState() => _Exams3State();
}

class _Exams3State extends State<Exams3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Exams3',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}