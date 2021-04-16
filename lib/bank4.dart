import 'package:flutter/material.dart';

class Bank4 extends StatefulWidget {
  @override
  _Bank4State createState() => _Bank4State();
}

class _Bank4State extends State<Bank4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Bank4',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}