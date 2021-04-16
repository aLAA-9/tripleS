import 'package:flutter/material.dart';

class Bank3 extends StatefulWidget {
  @override
  _Bank3State createState() => _Bank3State();
}

class _Bank3State extends State<Bank3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Bank3',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}